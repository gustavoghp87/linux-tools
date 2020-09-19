#!bin/bash

home=$(pwd)

f_banner() {
	echo
	echo \\ "\e[0;33m
			*** UPDATING AND UPGRADING, SIR *** "
	echo
	sleep 2
	f_update; f_upgrade; f_update_apt; f_upgrade_apt; f_autoremove
}

f_update() {
	apt-get update;
	echo \\ "\e[0;35m
			*** UPDATED APT-GET! *** "
}

f_upgrade() {
	apt-get upgrade --assume-yes;
	echo \\ "\e[0;32m
			*** UPGRADED APT-GET! *** "
}

f_update_apt() {
	apt update;
	echo \\ "\e[0;33m
			*** UPDATED APT! *** "
}

f_upgrade_apt() {
	apt upgrade --assume-yes;
	echo \\ "\e[0;35m
			*** UPGRADED APT! *** "
}

f_autoremove() {
	apt autoremove --assume-yes;
	echo \\ "\e[0;29m
			*** AUTOREMOVED PACKAGES! *** "
}

f_banner
