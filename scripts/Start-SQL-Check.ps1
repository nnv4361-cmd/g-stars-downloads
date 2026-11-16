$ErrorActionPreference='Stop'
try {
 Write-Host 'G-Stars 2026.11.16.52 - SQL TEST metadata check'
 Write-Host 'Read only. Does not install SQL contracts or change the database.'
 $server=Read-Host 'SQL TEST server (IP,port or SERVER\INSTANCE)'
 $database=Read-Host 'Exact TEST database name'
 $auth=Read-Host 'Authentication: 1 = Windows, 2 = SQL login'
 if($auth -notin @('1','2')){throw 'Choose 1 or 2.'}
 $reports=Join-Path $PSScriptRoot 'reports'
 [void][IO.Directory]::CreateDirectory($reports)
 $out=Join-Path $reports ('G-Stars-SQL-'+[DateTime]::UtcNow.ToString('yyyyMMddTHHmmssfffZ')+'.json')
 & (Join-Path $PSScriptRoot 'Test-GStars-SQL.ps1') -Server $server -Database $database -WindowsAuthentication:($auth -eq '1') -OutFile $out
 Write-Host ('Report saved: '+$out)
 Write-Host 'Report contains database metadata and hashes; no passwords, business rows or SQL bodies.'
}catch{Write-Error $_;exit 1}
