@echo off

:: Created by: Shawn Brink
:: Created on: October 3, 2022
:: Tutorial: https://www.elevenforum.com/t/disable-folder-thumbnail-previews-without-disabling-file-thumbnail-previews-in-windows-11.9415/


echo.
taskkill /f /im explorer.exe
timeout 2 /nobreak>nul
echo.

DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db

REG Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /V Logo /F

timeout 2 /nobreak>nul
start explorer.exe
