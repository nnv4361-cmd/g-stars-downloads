-- Optional permission repair ONLY. Does not install any G-Stars SQL contracts.
-- Database owner: verify this is the TEST copy, then fill all three fields below.
-- No login creation, password, sysadmin, db_owner, data grant, reset or overwrite.
SET NOCOUNT ON;
SET XACT_ABORT ON;
DECLARE @ExpectedTestDatabase sysname=N'CHANGE_TO_EXACT_TEST_DATABASE';
DECLARE @ExistingAppDatabaseUser sysname=N'CHANGE_TO_EXISTING_DATABASE_USER';
DECLARE @ConfirmThisIsTest bit=0;
IF @ConfirmThisIsTest<>1 OR DB_NAME()<>@ExpectedTestDatabase OR DB_ID()<=4
 THROW 51000,'Select and explicitly confirm the exact TEST database.',1;
IF ISNULL(CONVERT(nvarchar(20),DATABASEPROPERTYEX(DB_NAME(),'Updateability')),N'')<>N'READ_WRITE'
 OR NOT EXISTS(SELECT 1 FROM sys.extended_properties WHERE class=0 AND name=N'GStarsEnvironment' AND CONVERT(nvarchar(128),value)=N'UAT')
 THROW 51000,'Expected writable G-Stars UAT copy required.',1;
IF HAS_PERMS_BY_NAME(DB_NAME(),'DATABASE','CONTROL')<>1
 THROW 51000,'Authorized database owner must run this permission repair.',1;
IF @ExistingAppDatabaseUser IN (N'dbo',N'guest',N'public',N'sys',N'INFORMATION_SCHEMA')
 OR NOT EXISTS(SELECT 1 FROM sys.database_principals WHERE name=@ExistingAppDatabaseUser AND type IN ('S','U','G','E','X'))
 THROW 51000,'Specify an existing non-system application database user.',1;
IF SCHEMA_ID(N'client_lab') IS NULL
 THROW 51000,'G-Stars backend schema is absent. Granting a permission cannot install contracts.',1;
-- A full module/hash report is required before using this as the remedy.
DECLARE @Sql nvarchar(max)=N'GRANT VIEW DEFINITION ON SCHEMA::client_lab TO '+QUOTENAME(@ExistingAppDatabaseUser)+N';';
BEGIN TRY
 BEGIN TRANSACTION;
 EXEC sys.sp_executesql @Sql;
 COMMIT;
END TRY
BEGIN CATCH
 IF XACT_STATE()<>0 ROLLBACK;
 THROW;
END CATCH;
SELECT N'Metadata permission granted; no contracts installed. Rerun Test-GStars-SQL.ps1 as the app SQL user.' AS NextAction;
