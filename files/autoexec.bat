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

echo *** Refresh desktop... ***
setlocal EnableExtensions DisableDelayedExpansion
ie4uinit.exe -show
endlocal
echo *** All done. ***