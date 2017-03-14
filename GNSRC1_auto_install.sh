# Manual Installation of GNS3
## Install Dependencies
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python3-dev python3-setuptools python3-pyqt5 python3-pyqt5.qtsvg python3-pyqt5.qtwebkit python3-ws4py python3-netifaces python3-pip cmake uuid-dev libelf-dev libpcap-dev

## Install IdlePC dependencies
sudo apt-get -y install iouyap cpulimit virtualbox qemu wireshark


###############################################################################

# Automatic Installation
#https://gns3.com/discussions/gns3-2-0-alpha-4-released
#sudo add-apt-repository -r ppa:gns3/ppa
sudo add-apt-repository ppa:gns3/unstable
sudo apt-get update
sudo apt-get install gns3-gui

###############################################################################

# Disable firewall
sudo ufw disable
