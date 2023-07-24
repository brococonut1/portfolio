#!/bin/bash

echo IPAddress is:
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo %ip%

for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "Subnet"') do set sub=%%b
set sub=%sub:~1%
echo Subnet is:
echo %sub%

echo Gateway is:
ip r | awk '/^def/{print $3}'
