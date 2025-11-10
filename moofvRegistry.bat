@echo off
title moofv - Registry Tweaks Manager
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
echo                  moofv - Registry Tweaks Manager
echo ===========================================================
echo.
echo  Select a tweak to apply or revert:
echo.
echo  1  - System Responsiveness (SystemResponsiveness = 10)
echo  2  - GPU Priority (GPU Priority = 8)
echo  3  - Normal GPU Priority (GPU Priority = 6)
echo  4  - SFIO Priority (SFIO Priority = High)
echo  5  - Scheduling Category (Scheduling Category = High)
echo  6  - Priority (Priority = 6)
echo  7  - NetworkThrottlingIndex (disable throttling = ffffffff)
echo  8  - Menu Show Delay (MenuShowDelay = 0)
echo  9  - Mouse Hover Time (MouseHoverTime = 0)
echo 10  - Disable Startup Delay (StartupDelayInMSec = 0)
echo 11  - Disable Prefetch (EnablePrefetcher = 0)
echo 12  - Disable Hibernation (HibernateEnabled = 0)
echo 13  - Disable Driver Searching (SearchOrderConfig = 0)
echo 14  - Disable Paging Executive (DisablePagingExecutive = 1)
echo 15  - Show current values for all tweaks
echo 16  - Apply All Optimized Tweaks
echo 17  - Revert All Tweaks to Default
echo 18  - Exit
echo.
set /p choice="Enter choice number: "

if "%choice%"=="1" goto sysresp
if "%choice%"=="2" goto gpuhigh
if "%choice%"=="3" goto gpunormal
if "%choice%"=="4" goto sfiohigh
if "%choice%"=="5" goto schehigh
if "%choice%"=="6" goto priority6
if "%choice%"=="7" goto netthrottle
if "%choice%"=="8" goto menushow
if "%choice%"=="9" goto hover
if "%choice%"=="10" goto startupdelay
if "%choice%"=="11" goto prefetch
if "%choice%"=="12" goto hibernation
if "%choice%"=="13" goto driversearch
if "%choice%"=="14" goto disablepaging
if "%choice%"=="15" goto showcurrent
if "%choice%"=="16" goto applyall
if "%choice%"=="17" goto revertall
if "%choice%"=="18" goto end
echo Invalid selection.
pause
goto menu

:: -------------------------------
:: 1 - System Responsiveness
:sysresp
cls
echo System Responsiveness tweak
echo  1) Apply optimized (SystemResponsiveness = 10)
echo  2) Revert to default (SystemResponsiveness = 20)
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 10 /f
    echo Applied SystemResponsiveness = 10
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 20 /f
    echo Reverted SystemResponsiveness = 20
)
pause
goto menu

:: -------------------------------
:: 2 - GPU Priority (High)
:gpuhigh
cls
echo GPU Priority (High)
echo  1) Apply GPU Priority = 8 (High)
echo  2) Revert to default GPU Priority = 2
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
    echo Applied GPU Priority = 8
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 2 /f
    echo Reverted GPU Priority = 2
)
pause
goto menu

:: -------------------------------
:: 3 - Normal GPU Priority (6)
:gpunormal
cls
echo GPU Priority (Normal = 6)
echo  1) Set GPU Priority = 6 (Normal)
echo  2) Revert to default GPU Priority = 2
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 6 /f
    echo Set GPU Priority = 6
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 2 /f
    echo Reverted GPU Priority = 2
)
pause
goto menu

:: -------------------------------
:: 4 - SFIO Priority
:sfiohigh
cls
echo SFIO Priority
echo  1) Apply SFIO Priority = High
echo  2) Revert SFIO Priority = Normal
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
    echo Applied SFIO Priority = High
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
    echo Reverted SFIO Priority = Normal
)
pause
goto menu

:: -------------------------------
:: 5 - Scheduling Category
:schehigh
cls
echo Scheduling Category (Games task)
echo  1) Apply Scheduling Category = High
echo  2) Revert Scheduling Category = Medium
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
    echo Applied Scheduling Category = High
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
    echo Reverted Scheduling Category = Medium
)
pause
goto menu

:: -------------------------------
:: 6 - Priority (Games task)
:priority6
cls
echo Priority (Games task)
echo  1) Apply Priority = 6
echo  2) Revert Priority = 2
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
    echo Applied Priority = 6
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 2 /f
    echo Reverted Priority = 2
)
pause
goto menu

:: -------------------------------
:: 7 - NetworkThrottlingIndex
:netthrottle
cls
echo NetworkThrottlingIndex
echo  1) Disable throttling (NetworkThrottlingIndex = 0xFFFFFFFF)
echo  2) Revert to 0x0000000A
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 0xffffffff /f
    echo Applied NetworkThrottlingIndex = 0xFFFFFFFF
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 10 /f
    echo Reverted NetworkThrottlingIndex = 10
)
pause
goto menu

:: -------------------------------
:: 8 - Menu Show Delay
:menushow
cls
echo Menu Show Delay
echo  1) Set MenuShowDelay = 0 (instant menus)
echo  2) Revert MenuShowDelay = 400
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d "0" /f
    echo Applied MenuShowDelay = 0
) else (
    reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d "400" /f
    echo Reverted MenuShowDelay = 400
)
pause
goto menu

:: -------------------------------
:: 9 - Mouse Hover Time
:hover
cls
echo Mouse Hover Time
echo  1) Set MouseHoverTime = 0 (instant hover)
echo  2) Revert MouseHoverTime = 400
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d "0" /f
    echo Applied MouseHoverTime = 0
) else (
    reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d "400" /f
    echo Reverted MouseHoverTime = 400
)
pause
goto menu

:: -------------------------------
:: 10 - Disable Startup Delay
:startupdelay
cls
echo Disable Explorer Startup Delay
echo  1) Add StartupDelayInMSec = 0
echo  2) Remove StartupDelayInMSec
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f
    echo Applied StartupDelayInMSec = 0
) else (
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /f >nul 2>&1
    echo Removed StartupDelayInMSec
)
pause
goto menu

:: -------------------------------
:: 11 - Disable Prefetch
:prefetch
cls
echo Prefetch Settings
echo  1) Set EnablePrefetcher = 0
echo  2) Revert EnablePrefetcher = 3
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
    echo Applied EnablePrefetcher = 0
) else (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 3 /f
    echo Reverted EnablePrefetcher = 3
)
pause
goto menu

:: -------------------------------
:: 12 - Disable Hibernation
:hibernation
cls
echo Hibernation
echo  1) Disable hibernation (HibernateEnabled = 0)
echo  2) Enable hibernation (HibernateEnabled = 1)
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 0 /f
    echo Set HibernateEnabled = 0
) else (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 1 /f
    echo Set HibernateEnabled = 1
)
pause
goto menu

:: -------------------------------
:: 13 - Disable Driver Searching
:driversearch
cls
echo Driver Searching
echo  1) Disable driver searching (SearchOrderConfig = 0)
echo  2) Revert (SearchOrderConfig = 1)
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f
    echo Applied SearchOrderConfig = 0
) else (
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 1 /f
    echo Reverted SearchOrderConfig = 1
)
pause
goto menu

:: -------------------------------
:: 14 - Disable Paging Executive
:disablepaging
cls
echo Disable Paging Executive
echo  1) Apply DisablePagingExecutive = 1
echo  2) Revert DisablePagingExecutive = 0
set /p a="Choose (1/2): "
if "%a%"=="1" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
    echo Applied DisablePagingExecutive = 1
) else (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 0 /f
    echo Reverted DisablePagingExecutive = 0
)
pause
goto menu

:: -------------------------------
:: 15 - Show current values
:showcurrent
cls
echo Current registry values:
echo.
echo -- SystemResponsiveness --
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness 2>nul
echo.
echo -- GPU Priority, SFIO, Scheduling, Priority (Games task) --
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" 2>nul
echo.
echo -- NetworkThrottlingIndex --
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex 2>nul
echo.
echo -- MenuShowDelay --
reg query "HKCU\Control Panel\Desktop" /v MenuShowDelay 2>nul
echo.
echo -- MouseHoverTime --
reg query "HKCU\Control Panel\Mouse" /v MouseHoverTime 2>nul
echo.
echo -- StartupDelayInMSec --
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec 2>nul
echo.
echo -- EnablePrefetcher --
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher 2>nul
echo.
echo -- HibernateEnabled --
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled 2>nul
echo.
echo -- SearchOrderConfig --
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig 2>nul
echo.
echo -- DisablePagingExecutive --
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive 2>nul
echo.
pause
goto menu

:: -------------------------------
:: 16 - Apply All Optimized Tweaks
:applyall
cls
echo Applying all optimized tweaks...

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 10 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 0xffffffff /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f

echo All optimized tweaks applied!
pause
goto menu

:: -------------------------------
:: 17 - Revert All Tweaks
:revertall
cls
echo Reverting all tweaks to default...

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 20 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 10 /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d "400" /f
reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d "400" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 0 /f

echo All tweaks reverted to default successfully!
pause
goto menu

:end
echo Exiting...
exit /b 0
