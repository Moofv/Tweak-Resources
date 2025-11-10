@echo off
setlocal

echo *** BACKING UP registry branch HKLM\SYSTEM\CurrentControlSet\Control to .\reg-backup-Control.reg
reg export "HKLM\SYSTEM\CurrentControlSet\Control" "%~dp0reg-backup-Control.reg" /y >nul 2>&1
if errorlevel 1 (
  echo Warning: backup failed. Aborting.
  pause
  exit /b 1
)

echo WARNING: This will reduce power savings and increase CPU wakeups. Proceeding to set CoalescingTimerInterval=0 in a limited set of keys.
echo Press Ctrl+C to cancel or any key to continue...
pause >nul

:: Set in the most relevant Power/Session Manager locations only
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f

echo Done. Reboot required for full effect.
echo To restore previous values: reg import "%~dp0reg-backup-Control.reg"
pause
endlocal
exit /b 0
