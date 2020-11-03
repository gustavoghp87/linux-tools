ifconfig eth0 down && ifconfig wlan0 down &&
macchanger -r eth0 && macchanger -r wlan0 &&
ifconfig eth0 up && ifconfig wlan0 up