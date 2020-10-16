#! /usr/bin
#By:0w1b0t



mkdir Bluesnarfer
cd Bluesnarfer

wget http://alighieri.org/tools/bluesnarfer.tar.gz
apt-get install libbluetooth-dev


tar xvf bluesnarfer.tar.gz
cd bluesnarfer

make

mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
mknod --mode=666 /dev/rfcomm0 c 216 0
hciconfig hci0 up
hciconfig hci0
hcitool scan hci0

#l2ping  <victim mac addr>
 






