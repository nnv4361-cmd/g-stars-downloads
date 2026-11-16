param(
 [string]$Server,
 [string]$Database,
 [switch]$WindowsAuthentication,
 [System.Management.Automation.PSCredential]$Credential,
 [bool]$Encrypt=$true,
 [string]$OutFile,
 [switch]$FunctionsOnly
)
# Read-only metadata diagnosis. Does not install contracts, alter SQL, or run business code.
# Windows PowerShell 5.1; no SqlServer module, administrator rights, or extra runtime required.
$ErrorActionPreference='Stop'
function Get-GStarsSqlReadiness {
 param([System.Data.SqlClient.SqlConnection]$Connection,[string]$PinFile=(Join-Path $PSScriptRoot 'G-Stars-SQL-pins.json'))
 if(!$Connection -or $Connection.State -ne 'Open'){throw 'An open SQL connection is required.'}
 $pins=Get-Content -LiteralPath $PinFile -Raw|ConvertFrom-Json
 if($pins.clientVersion -ne '2026.11.16.52' -or @($pins.contracts).Count -ne 177){throw 'Unexpected SQL pin manifest.'}
 $expected=New-Object 'System.Collections.Generic.Dictionary[string,string]' ([StringComparer]::Ordinal)
 foreach($p in $pins.contracts){if($p.name -notmatch '^client_lab\.[A-Za-z0-9_]+$' -or $p.sha256 -notmatch '^[a-f0-9]{64}$' -or $expected.ContainsKey($p.name)){throw 'Invalid SQL pin manifest.'};$expected.Add($p.name,$p.sha256)}
 $cmd=$Connection.CreateCommand();$cmd.CommandTimeout=15
 $cmd.CommandText=@'
SELECT DB_NAME() DatabaseName,
 CONVERT(nvarchar(20),DATABASEPROPERTYEX(DB_NAME(),'Updateability')) Updateability,
 CONVERT(nvarchar(128),(SELECT value FROM sys.extended_properties WHERE class=0 AND name='GStarsEnvironment')) Environment,
 CONVERT(nvarchar(128),(SELECT value FROM sys.extended_properties WHERE class=0 AND name='GStarsDatabaseId')) DatabaseId,
 HAS_PERMS_BY_NAME(DB_NAME(),'DATABASE','VIEW DEFINITION') DatabaseViewDefinition,
 HAS_PERMS_BY_NAME('client_lab','SCHEMA','VIEW DEFINITION') SchemaViewDefinition,
 CASE WHEN USER_NAME()='dbo' OR IS_SRVROLEMEMBER('sysadmin')=1 THEN 1 ELSE 0 END MetadataAuthority,
 CASE WHEN COL_LENGTH('dbo.HT_NguoiDung','TenDangNhap') IS NOT NULL AND OBJECT_ID('dbo.SC_BaoGia','U') IS NOT NULL AND OBJECT_ID('dbo.GL_NhatKyChungTu','U') IS NOT NULL THEN 1 ELSE 0 END CoreVisible;
SELECT S.name+'.'+O.name ContractName,M.definition,OBJECTPROPERTY(O.object_id,'IsEncrypted') IsEncrypted
FROM sys.objects O JOIN sys.schemas S ON S.schema_id=O.schema_id
LEFT JOIN sys.sql_modules M ON M.object_id=O.object_id
WHERE S.name='client_lab';
'@
 $reader=$null;$hash=[Security.Cryptography.SHA256]::Create()
 $found=New-Object 'System.Collections.Generic.Dictionary[string,object]' ([StringComparer]::Ordinal)
 try{
  $reader=$cmd.ExecuteReader();if(!$reader.Read()){throw 'No database metadata returned.'}
  $identity=[ordered]@{database=[string]$reader['DatabaseName'];updateability=[string]$reader['Updateability'];environment=[string]$reader['Environment'];databaseId=[string]$reader['DatabaseId'];databaseViewDefinition=($reader['DatabaseViewDefinition'] -eq 1);schemaViewDefinition=($reader['SchemaViewDefinition'] -eq 1);metadataAuthority=($reader['MetadataAuthority'] -eq 1);coreVisible=($reader['CoreVisible'] -eq 1)}
  if(!$reader.NextResult()){throw 'No contract metadata result.'}
  while($reader.Read()){
   $name=[string]$reader['ContractName'];if(!$expected.ContainsKey($name)){continue}
   $actual=$null
   if($reader['definition'] -isnot [DBNull]){$bytes=[Text.Encoding]::UTF8.GetBytes([string]$reader['definition']);try{$actual=([BitConverter]::ToString($hash.ComputeHash($bytes))).Replace('-','').ToLowerInvariant()}finally{[Array]::Clear($bytes,0,$bytes.Length)}}
   $found.Add($name,@{sha256=$actual;encrypted=($reader['IsEncrypted'] -eq 1)})
  }
 }finally{if($reader){$reader.Dispose()};$hash.Dispose();$cmd.Dispose()}
 $findings=New-Object 'System.Collections.Generic.List[object]'
 foreach($p in $pins.contracts){
  $state='MATCH';$actual=$null
  if(!$found.ContainsKey($p.name)){$state='MISSING_OR_HIDDEN'}
  else{$r=$found[$p.name];$actual=$r.sha256;if($r.encrypted){$state='ENCRYPTED'}elseif(!$actual){$state='DEFINITION_HIDDEN'}elseif($actual -cne $p.sha256){$state='VERSION_MISMATCH'}}
  $findings.Add([pscustomobject]@{name=$p.name;status=$state;expectedSHA256=$p.sha256;actualSHA256=$actual})
 }
 $unseen=@($findings|Where-Object status -eq 'MISSING_OR_HIDDEN').Count
 $hidden=@($findings|Where-Object status -eq 'DEFINITION_HIDDEN').Count
 $encrypted=@($findings|Where-Object status -eq 'ENCRYPTED').Count
 $different=@($findings|Where-Object status -eq 'VERSION_MISMATCH').Count
 $match=@($findings|Where-Object status -eq 'MATCH').Count
 $status='READY_METADATA';$next='Metadata matches. G-Stars must still check OLE DB, login, business permissions and actual workflows.'
 if($unseen -or $hidden){
  # Even a schema grant can be overridden by an object DENY: absence remains inconclusive.
  $status='ADMIN_COMPARISON_REQUIRED';$next='Run again using an authorized database owner. Compare with the actual application SQL user; do not infer missing objects from restricted metadata.'
  if($identity.metadataAuthority -and $unseen){$status='BACKEND_MISSING';$next='Database owner confirms expected contracts are absent. Obtain the matching G-Stars backend package. Marking UAT or granting a permission does not install it.'}
 }
 if($encrypted){$status='ENCRYPTED_CONTRACTS';$next='Encrypted definitions cannot be verified. Obtain the supported backend version; do not bypass hash checks.'}
 if($different){$status='VERSION_MISMATCH';$next='Definitions differ from client 2026.11.16.52. Do not overwrite SQL or alter expected hashes to force login.'}
 $id=[Guid]::Empty;$validId=[Guid]::TryParse($identity.databaseId,[ref]$id) -and $id -ne [Guid]::Empty
 $identityReady=($identity.environment -ceq 'UAT' -and $identity.updateability -ceq 'READ_WRITE' -and $validId)
 [pscustomobject][ordered]@{schemaVersion=1;clientVersion=$pins.clientVersion;generatedAt=[DateTime]::UtcNow.ToString('o');status=$status;sqlConnectionOpened=$true;identity=$identity;identityReady=$identityReady;expected=177;matched=$match;missingOrHidden=$unseen;definitionHidden=$hidden;encrypted=$encrypted;versionMismatch=$different;nextAction=$next;findings=@($findings.ToArray());SQLWrites=$false;businessDataRead=$false;OLEDBTested=$false;businessLoginTested=$false;allWorkflowsAccepted=$false}
}
if(!$FunctionsOnly){
 if([string]::IsNullOrWhiteSpace($Server) -or [string]::IsNullOrWhiteSpace($Database)){throw 'Specify -Server and -Database. Example: .\Test-GStars-SQL.ps1 -Server "SQLTEST,1433" -Database "Carsoft_TEST" -WindowsAuthentication -OutFile .\sql-report.json'}
 if($WindowsAuthentication -and $Credential){throw 'Choose Windows authentication OR SQL credentials.'}
 if($Database -in @('master','model','msdb','tempdb')){throw 'Select the restored TEST database.'}
 if(!$WindowsAuthentication -and !$Credential){$Credential=Get-Credential -Message 'SQL TEST login (not the G-Stars business account). Password is not saved.';if(!$Credential){throw 'Cancelled.'}}
 $builder=New-Object Data.SqlClient.SqlConnectionStringBuilder
 $builder['Data Source']=$Server;$builder['Initial Catalog']=$Database;$builder['Connect Timeout']=8;$builder['Application Name']='G-Stars metadata diagnosis';$builder['Encrypt']=$Encrypt;$builder['TrustServerCertificate']=$false;$builder['Persist Security Info']=$false;$builder['Integrated Security']=[bool]$WindowsAuthentication
 if($Credential){$builder['User ID']=$Credential.UserName;$builder['Password']=$Credential.GetNetworkCredential().Password}
 $connection=New-Object Data.SqlClient.SqlConnection($builder.ConnectionString)
 try{
  $connection.Open();$report=Get-GStarsSqlReadiness -Connection $connection
  if($OutFile){$target=[IO.Path]::GetFullPath($OutFile);if(Test-Path -LiteralPath $target){throw 'Report already exists. Choose a new output name.'};[IO.File]::WriteAllText($target,($report|ConvertTo-Json -Depth 8),(New-Object Text.UTF8Encoding($false)))}
  $report|Select-Object clientVersion,status,sqlConnectionOpened,identityReady,expected,matched,missingOrHidden,definitionHidden,encrypted,versionMismatch,nextAction|Format-List
 }catch{
  # Do not log exception text/connection strings or credentials.
  if($_.Exception -is [Data.SqlClient.SqlException]){throw ('SQL connection/query failed. SQL error number: '+$_.Exception.Number+'. Use G-Stars Copy error for the redacted product diagnostic.')}
  throw
 }finally{$connection.Dispose();$builder.Clear();$Credential=$null}
}
