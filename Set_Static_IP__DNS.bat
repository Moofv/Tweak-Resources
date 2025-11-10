@Echo Off
SetLocal EnableDelayedExpansion

REM Settings
REM Set Interface=Ethernet
REM Set IP=192.168.1.101
REM Set Mask=255.255.255.0
REM Set Gateway=192.168.1.1
Set DNS1=1.1.1.1
Set DNS2=1.0.0.1

REM Calculate Any Settings Not Provided Above
If "%INTERFACE%"=="" For /F "Tokens=3,*" %%I In ('Netsh Int Show Interface ^| Find "Connected"') Do Set Interface=%%J
If "%IP%"=="" For /F "Tokens=3 Delims=: " %%I In ('Netsh Int Ip Show Config Name^="%INTERFACE%" ^| FindStr "IP Address" ^| FindStr [0-9]') Do Set IP=%%I
If "%MASK%"=="" For /F "Tokens=2 Delims=()" %%I In ('Netsh Int Ip Show Config Name^="%INTERFACE%" ^| FindStr /R "(.*)"') Do For %%J In (%%I) Do Set Mask=%%J
If "%GATEWAY%"=="" For /F "Tokens=3 Delims=: " %%I In ('Netsh Int Ip Show Config Name^="%INTERFACE%" ^| FindStr "Default" ^| FindStr [0-9]') Do Set Gateway=%%I
If "%DNS1%"=="" For /F "Tokens=2 Delims=: " %%I In ('Echo Quit^|Nslookup^|Find "Address:"') Do Set DNS1=%%I

If "%INTERFACE%"=="" Set _NotValidIP=1
Call:IsValidIP %IP%
Call:IsValidIP %MASK%
Call:IsValidIP %GATEWAY%
Call:IsValidIP %DNS1%
If Defined DNS2 Call:IsValidIP %DNS2%

REM Exit Program If An IP Is Invalid
If Defined _NotValidIP (
    Echo Setting A Static IP Failed.
    Pause
    Exit /B 1
)

REM Display New Settings
Echo Interface:        %INTERFACE%
Echo IP Address:       %IP%
Echo Subnet Mask:      %MASK%
Echo Default Gateway:  %GATEWAY%
Echo Primary DNS:      %DNS1%
If Defined DNS2 Echo Secondary DNS:    %DNS2%
Echo.

REM Make Changes
Netsh Int IPv4 Set Address Name="%INTERFACE%" Static %IP% %MASK% %GATEWAY% >Nul 2>&1
Netsh Int IPv4 Set DNS Name="%INTERFACE%" Static %DNS1% Primary >Nul 2>&1
If Defined DNS2 Netsh Int IPv4 Add DNS Name="%INTERFACE%" %DNS2% Index=2 >Nul 2>&1

REM Check DHCP Status
For /F "Tokens=3 Delims=: " %%I In ('Netsh Int Ip Show Config Name^="%INTERFACE%" ^| FindStr "DHCP" ^| FindStr [A-Z]') Do Set DHCP=%%I

REM Restart Network Adapter
If "%DHCP%"=="Yes" (
    Echo Setting A Static IP Failed.
    Pause
    Exit /B 2
) Else (
    Echo Restarting The Network Adapter ...
    Echo Done.
    Echo.
    Pause
    Exit /B 0
)

:IsValidIP
For /F "Tokens=1-4 Delims=./" %%A In ("%1") Do (
    If %%A LSS 1 Set _NotValidIP=1
    If %%A GTR 255 Set _NotValidIP=1
    If %%B LSS 0 Set _NotValidIP=1
    If %%B GTR 255 Set _NotValidIP=1
    If %%C LSS 0 Set _NotValidIP=1
    If %%C GTR 255 Set _NotValidIP=1
    If %%D LSS 0 Set _NotValidIP=1
    If %%D GTR 255 Set _NotValidIP=1
)
