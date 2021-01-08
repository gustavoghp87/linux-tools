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
	echo "2"
	airmon-ng check kill &&
	echo "3"
	ip link set $INTERFACE down &&
	echo "4"
	airmon-ng start $INTERFACE &&
	# iw dev $INTERFACE set type monitor &&
	echo "5"
	NEWINTERFACE = $INTERFACE + "mon"
	echo $NEWINTERFACE
	ip link set $INTERFACE up &&
	# iw $INTERFACE set txpower 3000 &&
	iw $NEWINTERFACE info
done

printf "\n\e[0;31m *** OK! ***"
echo
