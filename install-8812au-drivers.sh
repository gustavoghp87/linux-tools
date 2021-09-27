echo "Installing drivers for Alfa - 8812AU"

apt update

apt install -y linux-headers-$(uname -r) build-essential dkms git libelf-dev

echo
echo "-------- ready requirements --------";
echo

git clone https://github.com/morrownr/8812au.git

echo
echo "-------- ready clone --------";
echo

cd 8812au

# (extra step for raspberry pi OS)
./install-driver.sh

echo
echo "-------- ready --------";
echo
# (reboot)
