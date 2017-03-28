#!/bin/bash
#Environment Config 这个文件里面不要放zsh配置相关配置，只能放公用的环境配置
#cross compiler
# 这个脚本 需要用source 来执行
export PATH=$PATH:/usr/local/arm/current_compiler/bin
export MyConfigPath=$HOME
#opendir
alias opendir='nautilus'

#remove fontconfig Desktop
# if test -e ~/fontconfig
# then
# 	rm -r ~/fontconfig
# fi

# if test -e ~/Desktop
# then
# 	rm -r ~/Desktop
# fi
#autojump
# [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


#change ip

#iterm2 ssh_rmote_download setting 用来实现iterm的ssh下载服务的

export iterm2_hostname=192.168.5.5
# try{
	# source $MyConfigPath/myConfig/src/iterm2_intergration/iterm2_shell_integration.`basename $SHELL`
# }catch{
	# echo "iterm2_shell_intergration_file not find ,see ~/myConfig/config.sh"
# }
