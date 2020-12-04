#!bin/bash

home=$(pwd)

for INTERFACE in "$@"
do
echo
printf "\e[0;33m
    *** $INTERFACE TO MONITOR MODE *** "
echo
sleep 2

airmon-ng &&
airmon-ng check kill &&
ip link set $INTERFACE down &&
airmon-ng start $INTERFACE &&
# iw dev $INTERFACE set type monitor &&
ip link set $INTERFACE up &&
# iw $INTERFACE set txpower 3000 &&
NEWINTERFACE = $INTERFACE + "mon"
iw $NEWINTERFACE info
done

printf "\n\e[0;31m *** OK! ***"
