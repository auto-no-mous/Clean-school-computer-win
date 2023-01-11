@echo off

set source="c:\Users\Student\Desktop\*"
set destination="D:\BACKUP"

echo *** Desktop clean... ***
"C:\Program Files\7-Zip\7z.exe" a -tzip -ssw -mx0 -sdel %destination%\Desktop-files-%DATE%-%RANDOM%.zip %source%
echo *** Cleaning done ***

echo *** Restore default names for system icons ***
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D} /ve /f 
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E} /ve /f 
echo *** Default names restored ***

echo *** Set wallpaper to "stretch" setting ***
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
echo *** Wallpaper settings restored ***

::remove this block if you have Windows 8 or newer
echo *** Refresh desktop... ***
setlocal EnableExtensions DisableDelayedExpansion
ie4uinit.exe -show

endlocal
echo *** All done. ***