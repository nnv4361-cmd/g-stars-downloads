@echo off
powershell.exe -NoProfile -File "%~dp0Start-SQL-Check.ps1"
set "GStarsSqlCheckExit=%ERRORLEVEL%"
echo.
pause
exit /b %GStarsSqlCheckExit%
