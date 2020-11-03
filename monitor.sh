#!bin/bash

home=$(pwd)

echo
echo "\e[0;33m
    *** wlan0 TO MONITOR MODE *** "
echo
sleep 2

airmon-ng &&
airmon-ng check kill &&
ip link set wlan0 down &&
iw dev wlan0 set type monitor &&
ip link set wlan0 up &&
iw wlan0 set txpower 3000 &&
iw wlan0 info
done

echo "\n\e[0;31m *** OK! ***"
