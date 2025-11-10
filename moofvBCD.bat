@echo off
title moofv - BCD Tweaks Manager
color 0a

:: -------------------------------
:: Check for admin privileges
:: -------------------------------
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ERROR: This script needs to be run as Administrator.
    echo Right-click the .bat file and choose "Run as administrator".
    pause
    exit /b 1
)

:menu
cls
echo ===========================================================
echo                  moofv - BCD Tweaks Manager
echo ===========================================================
echo.
echo  Select a tweak to apply or revert:
echo.
echo  1  - Disable Dynamic Tick
echo  2  - Use Platform Clock
echo  3  - Use Platform Tick
echo  4  - TSC Sync Policy (Enhanced)
echo  5  - Apply All Optimized Tweaks
echo  6  - Revert All Tweaks to Stock
echo  7  - Show Current BCD Settings
echo  8  - Exit
echo.
set /p choice="Enter choice number: "

if "%choice%"=="1" goto disabledynamictick
if "%choice%"=="2" goto useplatformclock
if "%choice%"=="3" goto useplatformtick
if "%choice%"=="4" goto tscsyncpolicy
if "%choice%"=="5" goto applyall
if "%choice%"=="6" goto revertall
if "%choice%"=="7" goto showcurrent
if "%choice%"=="8" goto end
echo Invalid selection.
pause
goto menu

:: -------------------------------
:: 1 - Disable Dynamic Tick
:disabledynamictick
cls
echo Disable Dynamic Tick
echo  1) Apply Optimized (yes)
echo  2) Revert to Stock (no)
set /p a="Choose (1/2): "
if "%a%"=="1" (
    bcdedit /set disabledynamictick yes
    echo Applied Optimized disabledynamictick = yes
) else (
    bcdedit /set disabledynamictick no
    echo Reverted disabledynamictick to Stock = no
)
pause
goto menu

:: -------------------------------
:: 2 - Use Platform Clock
:useplatformclock
cls
echo Use Platform Clock
echo  1) Apply Optimized (no)
echo  2) Revert to Stock (yes)
set /p a="Choose (1/2): "
if "%a%"=="1" (
    bcdedit /set useplatformclock no
    echo Applied Optimized useplatformclock = no
) else (
    bcdedit /set useplatformclock yes
    echo Reverted useplatformclock to Stock = yes
)
pause
goto menu

:: -------------------------------
:: 3 - Use Platform Tick
:useplatformtick
cls
echo Use Platform Tick
echo  1) Apply Optimized (yes)
echo  2) Revert to Stock (no)
set /p a="Choose (1/2): "
if "%a%"=="1" (
    bcdedit /set useplatformtick yes
    echo Applied Optimized useplatformtick = yes
) else (
    bcdedit /set useplatformtick no
    echo Reverted useplatformtick to Stock = no
)
pause
goto menu

:: -------------------------------
:: 4 - TSC Sync Policy
:tscsyncpolicy
cls
echo TSC Sync Policy
echo  1) Apply Optimized (Enhanced)
echo  2) Revert to Stock (Default)
set /p a="Choose (1/2): "
if "%a%"=="1" (
    bcdedit /set tscsyncpolicy Enhanced
    echo Applied Optimized tscsyncpolicy = Enhanced
) else (
    bcdedit /deletevalue tscsyncpolicy >nul 2>&1
    echo Reverted tscsyncpolicy to Stock (Default)
)
pause
goto menu

:: -------------------------------
:: 5 - Apply All Optimized Tweaks
:applyall
cls
echo Applying all optimized BCD tweaks...

bcdedit /set disabledynamictick yes
bcdedit /set useplatformclock no
bcdedit /set useplatformtick yes
bcdedit /set tscsyncpolicy Enhanced

echo All Optimized BCD tweaks applied!
pause
goto menu

:: -------------------------------
:: 6 - Revert All Tweaks to Stock
:revertall
cls
echo Reverting all BCD tweaks to Stock...

bcdedit /set disabledynamictick no
bcdedit /set useplatformclock yes
bcdedit /set useplatformtick no
bcdedit /deletevalue tscsyncpolicy >nul 2>&1

echo All BCD tweaks reverted to Stock successfully!
pause
goto menu

:: -------------------------------
:: 7 - Show Current BCD Settings
:showcurrent
cls
echo Current BCD settings:
bcdedit /enum all | findstr /i "disabledynamictick useplatformclock useplatformtick tscsyncpolicy"
echo.
pause
goto menu

:end
echo Exiting...
exit /b 0
