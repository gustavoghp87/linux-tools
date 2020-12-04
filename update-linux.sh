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
}

f_update() {
	printf "$red UPDATING......................................."
	apt-get update;
	printf "\e[0;35m
			*** UPDATED APT-GET! *** "
}

f_upgrade() {
	printf "$blue UPDATING......................................."
	apt-get upgrade --assume-yes;
	printf "
			*** UPGRADED APT-GET! *** "
}

f_update_apt() {
	printf "$orange UPDATING......................................."
	apt update;
	printf "
			*** UPDATED APT! *** "
}

f_upgrade_apt() {
	printf "$purple UPDATING......................................."
	apt upgrade --assume-yes;
	printf "
			*** UPGRADED APT! *** "
}

f_autoremove() {
	printf "$yellow UPDATING......................................."
	apt autoremove --assume-yes;
	printf "\e[0;29m
			*** AUTOREMOVED PACKAGES! *** "
}

f_banner
