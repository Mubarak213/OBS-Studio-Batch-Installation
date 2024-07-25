@echo on

echo OBS Studio Installation is started >> "%windir%\Logs\OBS_Studio_30_2_1_Main_Install.log"

echo OBS Studio Logs created under path c:\Windows\Logs\  >> "%windir%\Logs\OBS_Studio_30_2_1_Main_Install.log"

echo OBS Studio Active setup is inprogress >> "%windir%\Logs\OBS_Studio_30_2_1_Main_Install.log"

REG IMPORT "%~dp0active setup.reg"

echo OBS Studio Active setup is Added >> "%windir%\Logs\OBS_Studio_30_2_1_Main_Install.log"

xcopy "%~dp0Roam_OBS" "%programdata%\OBS_STUDIO\" /S /Q /Y

REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\OBS Studio /v NoModify /t REG_SZ /d 1 /f

REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\OBS Studio /v NoRepair /t REG_SZ /d 1 /f

REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\OBS Studio /v NoRemove /t REG_SZ /d 1 /f

echo OBS Studio Suppressing ARP Options >> "%windir%\Logs\OBS_Studio_30_2_1_Main_Install.log"

echo OBS Studio Installation is inprogress >> "%windir%\Logs\OBS_Studio_30_2_1_Main_Install.log"

"C:\Temp\obs\OBS-Studio-30.2.1-Windows-Installer.exe" /S

del "C:\Users\Public\Desktop\OBS Studio.lnk" /f

echo OBS Studio Desktop Shortcut is removed >> "%windir%\Mubarak\Logs\OBS_Studio_30_2_1_Main_Install.log"

del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OBS Studio\Uninstall.lnk" /f

echo OBS Studio Uninstall Shortcut is removed >> "%windir%\Mubarak\Logs\OBS_Studio_30_2_1_Main_Install.log"

echo OBS Studio Installation is Completed >> "%windir%\Mubarak\Logs\OBS_Studio_30_2_1_Main_Install.log"


