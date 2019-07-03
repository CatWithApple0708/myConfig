#!/bin/bash
#所有的安装程序都不要分为 必要的 不必要的 环境相关 环境无关 升级程序
#抽空完成这个分类 然后将不同的程序放在不同的脚本里面
# test privage
# This is basic install
if [ $MyConfigDir ];then
	echo $MyConfigDir
else
	echo "Please source ./tools/envsetup.sh"
	exit
fi

#install apt
echo "install UbuntuPackage"
source ./src/UbuntuPackage/install_package.sh

#install oh-my-zsh
echo "install oh-my-zsh"
echo "source ~/myConfig/src/zsh/zshrc_basic.sh" > ~/.zshrc
echo "source ~/myConfig/src/zsh/zshrc_extend.sh" >> ~/.zshrc

#install local_setting
echo -e "echo \"source $MyConfigDir/config.sh\" >> ~/.zshrc"
echo -e "source $MyConfigDir/config.sh" >> ~/.zshrc

echo -e "source $MyConfigDir/config.sh" >> ~/.bashrc

#vimrc config
echo "install vim_runtime"
source ./src/vim_runtime/install_awesome_vimrc.sh
