echo *** disable personalization ***
::настройки для текущего пользователя
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v NoChangingMousePointers /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoDispScrSavPage /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Personalization" /v NoChangingSoundScheme /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoDispBackgroundPage /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoSizeChoice /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoVisualStyleChoice /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoThemesTab /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoColorChoice /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoDispCPL /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoDispSettingsPage /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Windows\Sidebar" /v TurnOffSidebar /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer" /v NoUninstallFromStart /t REG_DWORD /d 1 /f

::настройки, влияющие только на windows 8 и новее (все пользователи)
::полный список параметров, которые можно скрыть, смотрите здесь:
::https://learn.microsoft.com/en-us/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference

REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /t REG_SZ /d hide:personalization-background;personalization-start-places;lockscreen;themes;personalization-start;personalization-background;display;personalization-colors;colors;nightlight;powersleep;tabletmode;remotedesktop;autoplay;network-wifi;colors;taskbar;signinoptions;otherusers;regionlanguage;speech;gaming-gamebar;gaming-broadcasting;gaming-gamemode;gaming-trueplay;gaming-xboxnetworking;windowsdefender;screenrotation;personalization-glance;fonts;easeofaccess-mouse;easeofaccess-mousepointer;easeofaccess-highcontrast;easeofaccess-display;easeofaccess-colorfilter;easeofaccess-colorfilter-adaptivecolorlink;easeofaccess-colorfilter-bluelightlink;easeofaccess-keyboard;easeofaccess-highcontrast;easeofaccess-visualeffects;defaultapps;startupapps;appsfeatures;appsfeatures-app /f

::настройки влияющие Windows 7 и новее
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoChangingWallPaper /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoAddingComponents /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoComponents /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoThemesTab /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v NoChangingMousePointers /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Personalization" /v NoChangingLockScreen /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Personalization" /v PreferredUILanguages /t REG_SZ /d "ru-RU" /f

echo *** done ***
pause