#!bin/bash

home=$(pwd)

for INTERFACE in "$@"
do
echo
echo "\e[0;33m
    *** BARRANING $INTERFACE *** "
echo
sleep 2

airmon-ng &&
airmon-ng check kill &&
ip link set $INTERFACE down &&
iw dev $INTERFACE set type monitor &&
ip link set $INTERFACE up &&
iw $INTERFACE set txpower 3000 &&
iw $INTERFACE info
done

echo "\n\e[0;31m *** OK! ***"
