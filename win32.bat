@echo off
title Win32PrioritySeparation Toggle Script
color 0a

echo ======================================================
echo          Win32PrioritySeparation Mode Selector
echo ======================================================
echo.
echo  [1] Pure FPS Mode        (0x26 / 38 decimal)
echo  [2] Pure Latency Mode    (0x18 / 24 decimal)
echo  [3] Revert to Stock      (0x20 / 32 decimal)
echo.
set /p choice="Enter your choice (1, 2, or 3): "

if "%choice%"=="1" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x26 /f
    echo.
    echo Applied Pure FPS mode (0x26)
    goto end
)

if "%choice%"=="2" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x18 /f
    echo.
    echo Applied Pure Latency mode (0x18)
    goto end
)

if "%choice%"=="3" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x20 /f
    echo.
    echo Restored Stock Windows scheduling (0x20)
    goto end
)

echo.
echo Invalid selection. Please enter 1, 2, or 3.

:end
echo.
pause
