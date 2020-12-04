#!bin/bash
home=$(pwd)

for PORT in "$@"
do
printf "\n ... opening port $PORT"
iptables -A INPUT -p tcp --dport $PORT -j ACCEPT;
done

printf "\n\e[0;32m
		*** OPEN PORTS: "$@" *** \n\n"

printf "\e[0;33m"
iptables -L INPUT

printf "\n\e[0;31m *** OK! ***"

# wc opens files
# sudo iptables -L INPUT      lists open ports
