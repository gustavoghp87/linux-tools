#!bin/bash

home=$(pwd)

for INTERFACE in "$@"
do
echo
printf "\e[0;33m
    *** $INTERFACE TO MANAGED MODE *** "
echo
sleep 2

airmon-ng &&
airmon-ng check kill &&
ip link set $INTERFACE down &&
airmon-ng stop $INTERFACE &&
ip link set $INTERFACE up &&
NetworkManager
done

printf "\n\e[0;31m *** OK! ***"
echo
