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

::настройки, влияющие только на windows 8 и старше
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /t REG_SZ /d hide:personalization-background;themes;personalization-start;ms-settings:display;ms-settings:nightlight;ms-settings:powersleep;ms-settings:tabletmode;ms-settings:remotedesktop;ms-settings:autoplay;ms-settings:network-wifi;ms-settings:colors;ms-settings:taskbar;ms-settings:taskbar;ms-settings:signinoptions;ms-settings:otherusers;ms-settings:regionlanguage;ms-settings:speech;ms-settings:gaming-gamebar;ms-settings:gaming-broadcasting;ms-settings:gaming-gamemode;ms-settings:gaming-trueplay;ms-settings:gaming-xboxnetworking;ms-settings:windowsdefender /f

::настройки влияющие на все учетные записи
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoChangingWallPaper /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoAddingComponents /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoComponents /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoThemesTab /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v NoChangingMousePointers /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Personalization" /v NoChangingLockScreen /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Personalization" /v PreferredUILanguages /t REG_SZ /d "ru-RU" /f

echo *** done ***
pause