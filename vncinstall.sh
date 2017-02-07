sudo apt-get -y update
sudo apt-get -y install ubuntu-desktop tightvncserver gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal
vncserver :1
vncserver -kill :1
sudo rm ~/.vnc/xstartup
sudo cp xstartup ~/.vnc/xstartup
vncserver :1
