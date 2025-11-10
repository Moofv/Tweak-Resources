@echo off
REM PowerSaving Disable - Snow is really smelly
echo # USB Power Management DISABLE Script > "%temp%\usb_power_disable.ps1"
echo try { >> "%temp%\usb_power_disable.ps1"
echo     Write-Host 'USB Power Management DISABLE Script' -ForegroundColor Yellow >> "%temp%\usb_power_disable.ps1"
echo     Write-Host '===========================================' -ForegroundColor Yellow >> "%temp%\usb_power_disable.ps1"
echo     Write-Host 'This will UNCHECK the "Allow computer to turn off device" boxes' -ForegroundColor Red >> "%temp%\usb_power_disable.ps1"
echo. >> "%temp%\usb_power_disable.ps1"
echo     # Get all power-manageable USB devices >> "%temp%\usb_power_disable.ps1"
echo     Write-Host '1. Finding USB devices with power management...' -ForegroundColor Cyan >> "%temp%\usb_power_disable.ps1"
echo     $powerDevices = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root\wmi >> "%temp%\usb_power_disable.ps1"
echo     $usbPowerDevices = $powerDevices ^| Where-Object {$_.InstanceName -like '*USB*'} >> "%temp%\usb_power_disable.ps1"
echo     Write-Host "Found $($usbPowerDevices.Count) USB power-manageable devices" >> "%temp%\usb_power_disable.ps1"
echo. >> "%temp%\usb_power_disable.ps1"
echo     # Show current settings >> "%temp%\usb_power_disable.ps1"
echo     Write-Host '2. Current USB Power Management Settings:' -ForegroundColor Green >> "%temp%\usb_power_disable.ps1"
echo     foreach ($device in $usbPowerDevices) { >> "%temp%\usb_power_disable.ps1"
echo         $status = if ($device.Enable) { 'ENABLED (can turn off)' } else { 'DISABLED (stays on)' } >> "%temp%\usb_power_disable.ps1"
echo         Write-Host "  Device: $($device.InstanceName)" -ForegroundColor White >> "%temp%\usb_power_disable.ps1"
echo         Write-Host "  Current Setting: $status" -ForegroundColor Yellow >> "%temp%\usb_power_disable.ps1"
echo         Write-Host "  ---" >> "%temp%\usb_power_disable.ps1"
echo     } >> "%temp%\usb_power_disable.ps1"
echo. >> "%temp%\usb_power_disable.ps1"
echo     # DISABLE power management (set Enable to False) >> "%temp%\usb_power_disable.ps1"
echo     Write-Host '3. DISABLING power management for all USB devices...' -ForegroundColor Cyan >> "%temp%\usb_power_disable.ps1"
echo     $successCount = 0 >> "%temp%\usb_power_disable.ps1"
echo     foreach ($device in $usbPowerDevices) { >> "%temp%\usb_power_disable.ps1"
echo         try { >> "%temp%\usb_power_disable.ps1"
echo             Write-Host "Processing: $($device.InstanceName)" -ForegroundColor Yellow >> "%temp%\usb_power_disable.ps1"
echo             Set-CimInstance -InputObject $device -Property @{Enable=$False} >> "%temp%\usb_power_disable.ps1"
echo             Write-Host "SUCCESS: Power management DISABLED!" -ForegroundColor Green >> "%temp%\usb_power_disable.ps1"
echo             $successCount++ >> "%temp%\usb_power_disable.ps1"
echo         } catch { >> "%temp%\usb_power_disable.ps1"
echo             Write-Host "FAILED: $($_.Exception.Message)" -ForegroundColor Red >> "%temp%\usb_power_disable.ps1"
echo         } >> "%temp%\usb_power_disable.ps1"
echo         Write-Host "---" >> "%temp%\usb_power_disable.ps1"
echo     } >> "%temp%\usb_power_disable.ps1"
echo. >> "%temp%\usb_power_disable.ps1"
echo     Write-Host "SUMMARY: Successfully DISABLED power management on $successCount out of $($usbPowerDevices.Count) USB devices" -ForegroundColor Green >> "%temp%\usb_power_disable.ps1"
echo     Write-Host "Result: Windows will NOT turn off these USB devices to save power" -ForegroundColor Green >> "%temp%\usb_power_disable.ps1"
echo. >> "%temp%\usb_power_disable.ps1"
echo } catch { >> "%temp%\usb_power_disable.ps1"
echo     Write-Host "Script Error: $($_.Exception.Message)" -ForegroundColor Red >> "%temp%\usb_power_disable.ps1"
echo } >> "%temp%\usb_power_disable.ps1"
echo. >> "%temp%\usb_power_disable.ps1"
echo Write-Host 'VERIFICATION: Check Device Manager after running this script:' -ForegroundColor Yellow >> "%temp%\usb_power_disable.ps1"
echo Write-Host '1. Open Device Manager' -ForegroundColor White >> "%temp%\usb_power_disable.ps1"
echo Write-Host '2. Expand "Universal Serial Bus controllers"' -ForegroundColor White >> "%temp%\usb_power_disable.ps1"
echo Write-Host '3. Right-click a USB hub -^> Properties -^> Power Management' -ForegroundColor White >> "%temp%\usb_power_disable.ps1"
echo Write-Host '4. "Allow the computer to turn off this device" should now be UNCHECKED' -ForegroundColor White >> "%temp%\usb_power_disable.ps1"
echo Read-Host "Press Enter to continue..." >> "%temp%\usb_power_disable.ps1"

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Administrator privileges required!
    echo Right-click this batch file and "Run as administrator"
    pause
    exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -File "%temp%\usb_power_disable.ps1"

echo Cleaning up...
del "%temp%\usb_power_disable.ps1" 2>nul
pause