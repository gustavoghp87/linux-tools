#!bin/bash

# git clone https://github.com/devr82/wifite2;
# git clone https://github.com/JPaulMora/Pyrit;

apt update;
apt-get update;
apt-get install hcxdumptool --assume-yes;
apt install hcxtools --assume-yes;
apt-get install python2.7-dev libssl-dev zlib1g-dev libpcap-dev --assume-yes;
python2 /media/kali/persistence/Pyrit/setup.py clean;
python2 /media/kali/persistence/Pyrit/setup.py build;
python2 /media/kali/persistence/Pyrit/setup.py install;
