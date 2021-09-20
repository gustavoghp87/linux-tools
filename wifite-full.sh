#!bin/bash

cd ~/home/

echo "--------> Run from /home and sudo"
# git clone https://github.com/devr82/wifite2;
git clone https://github.com/JPaulMora/Pyrit;

apt update;
echo
echo "-------- ready --------";
echo

apt-get update;
echo
echo "\n-------- ready --------";
echo

apt-get install hcxdumptool --assume-yes;
echo
echo "-------- ready --------";
echo

apt install hcxtools --assume-yes;
echo
echo "-------- ready --------";
echo

apt-get install python2.7-dev libssl-dev zlib1g-dev libpcap-dev --assume-yes;
echo
echo "-------- ready --------";
echo

python2 Pyrit/setup.py clean;
echo "\n-------- ready --------\n";

python2 Pyrit/setup.py build;
echo "\n-------- ready --------\n";

python2 Pyrit/setup.py install;
echo "\n-------- ready --------\n";

# python wifite2/Wifite.py
# echo "\n-------- ready --------\n";
