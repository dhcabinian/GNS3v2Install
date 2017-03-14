# Manual Installation of GNS3
## Install Dependencies
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python3-dev python3-setuptools python3-pyqt5 python3-pyqt5.qtsvg python3-pyqt5.qtwebkit python3-ws4py python3-netifaces python3-pip cmake uuid-dev libelf-dev libpcap-dev
## Create installation location
mkdir GNS3
cd GNS3
### Download alpha version of GNS3
wget https://github.com/GNS3/gns3-gui/releases/download/v2.0.0rc2/GNS3-2.0.0rc2.source.zip
unzip *.zip
rm *.source.zip
unzip '*.zip'
rm *.zip
## Install dynamips
cd dyn*
mkdir build
cd build
cmake ..
make
sudo make install
sudo setcap cap_net_admin,cap_net_raw=ep /usr/local/bin/dynamips
cd ../..
## Install GNS Server
cd gns3-server-*
sudo python3 setup.py install
cd ..
## Install GNS GUI
cd gns3-gui-*
sudo python3 setup.py install
cd ..
## Install  SSL dependencies
sudo apt-get -y install libssl1.0.0:i386
sudo ln -s /lib/i386-linux-gnu/libcrypto.so.1.0.0 /lib/libcrypto.so.4
sudo apt-get -y install bison flex git
git clone http://github.com/ndevilla/iniparser.git
cd iniparser
make
sudo cp libiniparser.* /usr/lib/
sudo cp src/iniparser.h /usr/local/include
sudo cp src/dictionary.h /usr/local/include
cd ..
## Install IdlePC dependencies
sudo apt-get -y install iouyap cpulimit virtualbox qemu wireshark
## Install vpcs
cd vpcs-*/src
./mk.sh
sudo cp vpcs /usr/local/bin
cd ../..
## install ubridge
cd ubridge-*
make
sudo make install

###############################################################################

# Automatic Installation
#https://gns3.com/discussions/gns3-2-0-alpha-4-released
#sudo add-apt-repository -r ppa:gns3/ppa
#sudo add-apt-repository ppa:gns3/unstable
#sudo apt-get update
#sudo apt-get install gns3-gui

###############################################################################

# Disable firewall
sudo ufw disable
