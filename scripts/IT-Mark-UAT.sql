-- IT: run manually on the restored TEST database only. Never run on production.
-- This script DOES NOT install the required client_lab procedures.
SET NOCOUNT ON;
SET XACT_ABORT ON;
DECLARE @ExpectedTestDatabase sysname=N'CHANGE_TO_EXACT_TEST_DATABASE';
DECLARE @ConfirmThisIsTest bit=0; -- IT must explicitly change to 1 after verification.
IF @ConfirmThisIsTest<>1 OR DB_NAME()<>@ExpectedTestDatabase
    THROW 51000,'Select and explicitly confirm the TEST database before marking UAT.',1;
IF DB_ID()<=4 OR CONVERT(nvarchar(20),DATABASEPROPERTYEX(DB_NAME(),'Updateability'))<>N'READ_WRITE'
    THROW 51000,'System or read-only database is not a G-Stars UAT target.',1;
IF OBJECT_ID(N'dbo.HT_NguoiDung',N'U') IS NULL OR OBJECT_ID(N'dbo.SC_BaoGia',N'U') IS NULL
    THROW 51000,'Expected restored G-Stars structures not found.',1;
IF EXISTS(SELECT 1 FROM sys.extended_properties WHERE class=0 AND name=N'GStarsEnvironment'
          AND CONVERT(nvarchar(128),value)<>N'UAT')
    THROW 51000,'Existing environment marker differs. No overwrite performed.',1;
BEGIN TRY
    DECLARE @ExistingId uniqueidentifier=(SELECT CONVERT(uniqueidentifier,CONVERT(nvarchar(128),value))
        FROM sys.extended_properties WHERE class=0 AND name=N'GStarsDatabaseId');
    IF @ExistingId='00000000-0000-0000-0000-000000000000'
        THROW 51000,'Existing identity is empty. No overwrite performed.',1;
END TRY
BEGIN CATCH
    THROW 51000,'Existing identity is invalid. No overwrite performed.',1;
END CATCH;
BEGIN TRANSACTION;
IF NOT EXISTS(SELECT 1 FROM sys.extended_properties WHERE class=0 AND name=N'GStarsEnvironment')
    EXEC sys.sp_addextendedproperty @name=N'GStarsEnvironment',@value=N'UAT';
IF NOT EXISTS(SELECT 1 FROM sys.extended_properties WHERE class=0 AND name=N'GStarsDatabaseId')
BEGIN
    DECLARE @Id nvarchar(36)=CONVERT(nvarchar(36),NEWID());
    EXEC sys.sp_addextendedproperty @name=N'GStarsDatabaseId',@value=@Id;
END;
COMMIT;
SELECT DB_NAME() AS TestDatabase,CONVERT(nvarchar(128),value) AS GStarsDatabaseId
FROM sys.extended_properties WHERE class=0 AND name=N'GStarsDatabaseId';
