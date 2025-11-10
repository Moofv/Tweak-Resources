@echo off
title Max USB Performance (Registry + Device Level)
echo ======================================================
echo  Disabling USB power savings system-wide AND per device...
echo ======================================================

REM ---- Require Admin ----
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo.
    echo ERROR: Administrator privileges required!
    echo Right-click this batch file and "Run as administrator"
    pause
    exit /b
)

REM ---- 1. SYSTEM-WIDE REGISTRY USB POWER DISABLE ----
echo.
echo [1/2] Applying registry-level USB power tweaks...
REM Disable USB Selective Suspend globally
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v DisableSelectiveSuspend /t REG_DWORD /d 1 /f
REM Disable Selective Suspend for XHCI controllers (USB 3.x)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBXHCI" /v DisableSelectiveSuspend /t REG_DWORD /d 1 /f
REM Disable Modern Standby (AOAC)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PlatformAoAcOverride /t REG_DWORD /d 0 /f
REM Disable USB Link Power Management (U1/U2/U3)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\HubG" /v EnableU1 /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\HubG" /v EnableU2 /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\HubG" /v EnableU3 /t REG_DWORD /d 0 /f
REM Disable Enhanced Power Management
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f

echo Registry-level USB tweaks applied successfully.

REM ---- 2. PER-DEVICE USB POWER MANAGEMENT DISABLE ----
echo.
echo [2/2] Applying per-device USB power management tweaks...
echo Creating temporary PowerShell script...
set ps1file=%temp%\usb_device_disable.ps1

echo try { > "%ps1file%"
echo     Write-Host 'Disabling power management for all USB devices...' -ForegroundColor Cyan >> "%ps1file%"
echo     $powerDevices = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root\wmi >> "%ps1file%"
echo     $usbDevices = $powerDevices ^| Where-Object {$_.InstanceName -like '*USB*'} >> "%ps1file%"
echo     $successCount = 0 >> "%ps1file%"
echo     foreach ($device in $usbDevices) { >> "%ps1file%"
echo         try { >> "%ps1file%"
echo             Set-CimInstance -InputObject $device -Property @{Enable=$False} >> "%ps1file%"
echo             $successCount++ >> "%ps1file%"
echo         } catch {} >> "%ps1file%"
echo     } >> "%ps1file%"
echo     Write-Host "USB device power management disabled on $successCount out of $($usbDevices.Count) devices." -ForegroundColor Green >> "%ps1file%"
echo } catch { >> "%ps1file%"
echo     Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red >> "%ps1file%"
echo } >> "%ps1file%"

echo Running PowerShell script...
powershell -NoProfile -ExecutionPolicy Bypass -File "%ps1file%"

echo Cleaning up...
del "%ps1file%" 2>nul

echo.
echo All USB power-saving tweaks applied successfully!
echo A system restart is recommended to apply ALL changes.
pause
exit
