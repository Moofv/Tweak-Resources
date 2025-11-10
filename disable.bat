@echo off
netsh advfirewall firewall add rule name="Khorvie Block ICMPv4 Echo Requests" ^
    protocol=icmpv4:8,any dir=in action=block enable=yes description="Block inbound IPv4 ICMP Echo Requests (ping)"

netsh advfirewall firewall add rule name="Khorvie Block ICMPv6 Echo Requests" ^
    protocol=icmpv6:128,any dir=in action=block enable=yes description="Block inbound IPv6 ICMP Echo Requests (ping)"


