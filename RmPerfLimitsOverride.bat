@echo off
for /f "delims=" %%i in ('powershell -command "Get-WmiObject Win32_VideoController | Select-Object -ExpandProperty PNPDeviceID | findstr /L \"PCI\VEN_\""') do (
	for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%i" /v "Driver"') do (
		for /f %%i in ('echo %%a ^| findstr "{"') do (
		     Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%i" /v "RmPerfLimitsOverride" /t REG_DWORD /d "0x00000015" /f > nul 2>&1
                   )
                )
             )
echo Applied Successfully
pause > nul 2>&1