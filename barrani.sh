#!bin/bash

home=$(pwd)

for INTERFACE in "$@"
do
    echo
    printf "\e[0;33m
        *** BARRANING $INTERFACE *** "
    echo
    sleep 2
    ifconfig $INTERFACE down && macchanger -r $INTERFACE && ifconfig $INTERFACE up
done

printf "\n\e[0;31m *** OK! ***"
echo
