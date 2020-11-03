#!bin/bash

home=$(pwd)

for INTERFACE in "$@"
do
echo
echo "\e[0;33m
    *** BARRANING $INTERFACE *** "
echo
sleep 2
ifconfig $INTERFACE down && macchanger -r $INTERFACE && ifconfig $INTERFACE up
done

echo "\n\e[0;31m *** OK! ***"
