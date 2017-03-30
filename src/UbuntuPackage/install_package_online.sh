#/bin/bash
echo yes| sudo apt-get install git
echo yes| sudo apt-get install zsh
echo yes| sudo apt-get install vim-gtk
echo yes| sudo apt-get install openssh-server
echo yes| sudo apt-get install tftpd-hpa tftp-hpa
echo yes| sudo apt-get install nfs-kernel-server

echo "apt-get list" > $MyConfigDir/log/apt_get_list.log

echo -e \
	"git\n"\
	"zsh\n"\
	"vim-gtk\n"\
	"openssh-server\n"\
	"tftpd-hpa tftp-hpa\n"\
	"nfs-kernel-server\n"\
>>$MyConfigDir/log/apt_get_list.log
