#!bin/bash

#cd ~/home/

echo "--------> Running (sudo)"
# git clone https://github.com/devr82/wifite2;
git clone https://github.com/JPaulMora/Pyrit;

apt update;
echo
echo "-------- ready apt update --------";
echo

apt-get update;
echo
echo "\n-------- ready apt-get update --------";
echo

apt-get install hcxdumptool --assume-yes;
echo
echo "-------- ready hcxdumptool --------";
echo

apt install hcxtools --assume-yes;
echo
echo "-------- ready hcxtools --------";
echo

apt-get install python2.7-dev libssl-dev zlib1g-dev libpcap-dev --assume-yes;
echo
echo "-------- ready python2 etc--------";
echo

python Pyrit/setup.py clean;
echo "\n-------- ready clean --------\n";

python Pyrit/setup.py build;
echo "\n-------- ready build --------\n";

python Pyrit/setup.py install;
echo "\n-------- ready install --------\n";

# python wifite2/Wifite.py
# echo "\n-------- ready --------\n";
