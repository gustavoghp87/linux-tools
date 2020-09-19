#!bin/bash

home=$(pwd)

iptables -A INPUT -p tcp --dport 8005 -j ACCEPT;
iptables -A INPUT -p tcp --dport 2009 -j ACCEPT;
iptables -A INPUT -p tcp --dport 3000 -j ACCEPT;
iptables -A INPUT -p tcp --dport 5000 -j ACCEPT;

echo -e "\e[0;32m
		*** OPEN PORTS: 2009, 3000, 5000 y 8005 *** \n\n"
