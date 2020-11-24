#!bin/bash

home=$(pwd)

for INTERFACE in "$@"
do
echo
echo "\e[0;33m
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

echo "\n\e[0;31m *** OK! ***"
