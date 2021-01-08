#!bin/bash

# git clone https://github.com/devr82/wifite2;
# git clone https://github.com/JPaulMora/Pyrit;

apt update;
echo "\n-------- ready --------\n";

apt-get update;
echo "\n-------- ready --------\n";

apt-get install hcxdumptool --assume-yes;
echo "\n-------- ready --------\n";

apt install hcxtools --assume-yes;
echo "\n-------- ready --------\n";

apt-get install python2.7-dev libssl-dev zlib1g-dev libpcap-dev --assume-yes;
echo "\n-------- ready --------\n";

cd /media/kali/persistence/Pyrit/cpyrit;
python2 /media/kali/persistence/Pyrit/setup.py clean;
echo "\n-------- ready --------\n";

python2 /media/kali/persistence/Pyrit/setup.py build;
echo "\n-------- ready --------\n";

python2 /media/kali/persistence/Pyrit/setup.py install;
echo "\n-------- ready --------\n";

python /media/kali/persistence/wifite2/Wifite.py
echo "\n-------- ready --------\n";
