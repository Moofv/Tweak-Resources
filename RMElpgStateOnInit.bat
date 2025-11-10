@echo off
for /f "delims=" %%i in ('powershell -command "Get-WmiObject Win32_VideoController | Select-Object -ExpandProperty PNPDeviceID | findstr /L \"PCI\VEN_\""') do (
	for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%i" /v "Driver"') do (
		for /f %%i in ('echo %%a ^| findstr "{"') do (
		     Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%i" /v "RMElpgStateOnInit" /f
                   )
                )
             )
echo Applied Successfully, Restart your PC
pause > nul 2>&1