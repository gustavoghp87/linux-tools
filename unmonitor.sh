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
	echo "finished ip link set ... down" &&
	
	airmon-ng stop $INTERFACE &&
	echo "finished airmon-ng stop" &&
	
	# ip link set $INTERFACE up &&
	echo "(no...) ip link set ... up" &&
	NetworkManager &&
	echo "finished NetworkManager"
done

printf "\n\e[0;31m *** OK! ***"
echo
