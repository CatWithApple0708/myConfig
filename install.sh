#!/bin/bash
#所有的安装程序都不要分为 必要的 不必要的 环境相关 环境无关 升级程序 
#抽空完成这个分类 然后将不同的程序放在不同的脚本里面
# test privage
# This is basic install
sudo touch /install_file_1013909206_tmp_for_testing_privage
if [ $? -eq 0 ];then
	echo "sucess"
	sudo rm /install_file_1013909206_tmp_for_testing_privage
else
	echo "Please type sudo ./install.sh"
	exit 1
fi


#install apt
echo "install UbuntuPackage"
sudo sh ./src/UbuntuPackage/install_package.sh 

#install oh-my-zsh
echo "install oh-my-zsh"
sudo chsh -s /bin/zsh
echo "source ~/myConfig/src/zsh/zshrc_basic.sh" > ~/.zshrc
echo "source ~/myConfig/src/zsh/zshrc_extend.sh" >> ~/.zshrc

#install local_setting
echo "echo \"source ~/myConfig/config.sh\" >> ~/.zshrc"
echo "source ~/myConfig/config.sh" >> ~/.zshrc

# vimrc config
echo "install vim_runtime"
sh ./src/vim_runtime/install_awesome_vimrc.sh 

echo "sudo apt-get update"
sudo apt-get update


#install iterm2_interation.sh用来实现iterm的ssh下载服务 *update
sh ./tools/iterm2_itegration_install.sh

#change wallpaper
sh ./src/wallpaper/set_wallpaper.sh




