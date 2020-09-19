#!bin/bash

home=$(pwd)

for PORT in "$@"
do
echo "\n ... opening port $PORT"
iptables -A INPUT -p tcp --dport $PORT -j ACCEPT;
done

echo "\n\e[0;32m
		*** OPEN PORTS: "$@" *** \n\n"

echo "\e[0;33m"
iptables -L INPUT

echo "\n\e[0;31m *** OK! ***"

# wc opens files
# sudo iptables -L INPUT      lists open ports
