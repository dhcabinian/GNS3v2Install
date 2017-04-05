# Install virtualbox and wireshark
sudo apt-get -y install virtualbox wireshark


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
sudo apt-get -y update
sudo apt-get -y install gns3-gui

###############################################################################

# Disable firewall
sudo ufw disable

#https://medium.com/@joseison/running-ubuntu-desktop-gui-aws-ec2-instance-on-windows-3d4d070da434#.hkwfndh3r
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install ubuntu-desktop tightvncserver gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal
vncserver :1
vncserver -kill :1
sudo rm ~/.vnc/xstartup
sudo chmod 777 ~/.vnc
sudo chmod 777 xstartup
sudo cp xstartup ~/.vnc/xstartup
vncserver :1
#ssh -L 5901:127.0.0.1:5901 ubuntu@<IP Address> -i ~/.ssh/<ssh key>.pem

# Will ask for VNC password
# Password: mininet
# Will ask if you want view only Password
# No
