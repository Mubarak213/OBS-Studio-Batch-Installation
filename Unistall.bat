@echo on

RMDIR "%programdata%\OBS_STUDIO" /S /Q

echo OBS Studio Files under Program data is removed  1>> "%windir%\Logs\OBS_Studio_30_2_1_Main_Uninstall.log"

REG DELETE "HKLM\SOFTWARE\Microsoft\Active Setup\OBS_STUDIO" /f

echo OBS Studio Active setup registry is removed  1>> "%windir%\Logs\OBS_Studio_30_2_1_Main_Uninstall.log"

echo OBS Studio Uninstallation is inprogress 1>> "%windir%\Logs\OBS_Studio_30_2_1_Main_Uninstall.log"

"C:\Program Files\obs-studio\uninstall.exe" /S

echo OBS Studio Uninstallation is Completed 1>> "%windir%\Logs\OBS_Studio_30_2_1_Main_Uninstall.log"


