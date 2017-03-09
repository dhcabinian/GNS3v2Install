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
