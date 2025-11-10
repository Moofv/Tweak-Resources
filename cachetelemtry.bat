@Echo Off
Reg.exe Add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisableCacheTelemetry" /t REG_DWORD /d "1" /f >Nul 2>&1