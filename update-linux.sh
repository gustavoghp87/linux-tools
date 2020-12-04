#!bin/bash
home=$(pwd)
source bash-colors

f_banner() {
	echo
	printf "$green
			*** UPDATING AND UPGRADING, SIR *** "
	echo
	sleep 2
	f_update; f_upgrade; f_update_apt; f_upgrade_apt; f_autoremove
	echo
}

f_update() {
	echo
	printf "$red UPDATING......................................."
	apt-get update;
	printf "\e[0;35m
			*** UPDATED APT-GET! *** "
	echo
}

f_upgrade() {
	echo
	printf "$blue UPDATING......................................."
	apt-get upgrade --assume-yes;
	printf "
			*** UPGRADED APT-GET! *** "
	echo
}

f_update_apt() {
	echo
	printf "$orange UPDATING......................................."
	apt update;
	printf "
			*** UPDATED APT! *** "
	echo
}

f_upgrade_apt() {
	echo
	printf "$purple UPDATING......................................."
	apt upgrade --assume-yes;
	printf "
			*** UPGRADED APT! *** "
	echo
}

f_autoremove() {
	echo
	printf "$yellow UPDATING......................................."
	apt autoremove --assume-yes;
	printf "\e[0;29m
			*** AUTOREMOVED PACKAGES! *** "
	echo
}

f_banner
