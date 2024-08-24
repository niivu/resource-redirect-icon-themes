@echo off

echo.
taskkill /f /im explorer.exe
timeout 2 /nobreak>nul
echo.

DEL /F /Q /A %LocalAppData%\IconCache.db
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\iconcache_*.db
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db

timeout 2 /nobreak>nul
start explorer.exe
