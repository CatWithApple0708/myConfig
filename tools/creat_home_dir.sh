#/bin/bash
if test  -e ~/Space 
then
	echo "Dir has created."
else
	echo "Creat Dir system"
	mkdir ~/Space
	mkdir -p ~/Others/default_nfs
	mkdir -p ~/Others/tftpboot
	mkdir ~/tmp
	#mkdir origin home/dir


     rm -r ~/Desktop
     rm -r ~/Downloads
     rm -r ~/Templates
     rm -r ~/Publicshare
     rm -r ~/Document
     rm -r ~/Music
     rm -r ~/Pictures
     rm -r ~/Videos

	mkdir -p ~/Others/ubuntu/Desktop
	mkdir -p ~/Others/ubuntu/download
	mkdir -p ~/Others/ubuntu/template
	mkdir -p ~/Others/ubuntu/publicshare
	mkdir -p ~/Others/ubuntu/document
	mkdir -p ~/Others/ubuntu/music
	mkdir -p ~/Others/ubuntu/pictures
	mkdir -p ~/Others/ubuntu/videos

	cat ~/myConfig/tools/config/user-dirs.dirs.config > ~/.config/user-dirs.dirs
	echo "#This add by ~/myConfig/tools/creat_home_dir.sh ----Zhaohe " >> ~/.config/user-dirs.dirs
fi
