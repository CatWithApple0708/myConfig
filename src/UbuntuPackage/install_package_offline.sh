
sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
sudo echo "deb file:// $HOME/myConfig/src/UbuntuPackage/offlinePackage/" > /etc/apt/sources.list
sudo apt-get update

sudo apt-get install git
sudo apt-get install zsh
sudo apt-get install vim-gtk

sudo apt-get install openssh-server
sudo apt-get install tftpd-hpa tftp-hpa
sudo apt-get install nfs-kernel-server


sudo cp /etc/apt/sources.list.back /etc/apt/sources.list

# sudo apt-get update

