#!/bin/bash
#Environment Config 这个文件里面不要放zsh配置相关配置，只能放公用的环境配置
#cross compiler
# 这个脚本 需要用source 来执行

export MyConfigPath=$HOME/myConfig
source $MyConfigPath/src/export.sh
# export PATH=$PATH:$HOME/myConfig/usr/bin
#opendir
alias opendir='nautilus'
# 获得当前脚本的目录


PS1="\[\033[0;32m\]\u@\W\$\[\033[00m\] "
# PS1='\[\033[s\033[0;0H\033[0;41m\033[K\033[1;33m\H\033[0m\033[u\033[1;32m\]\u@\W\$ \[\033[00m\] '
export PS1
 # You may uncomment the following lines if you want `ls' to be colorized:
  export LS_OPTIONS='--color=auto'
  eval "`dircolors`"
  alias ls='ls $LS_OPTIONS'
  alias ll='ls $LS_OPTIONS -l'
  alias l='ls $LS_OPTIONS -lA'

  alias cdk='cd $KERNEL'
  alias cdt='cd $TOOLS'
  alias vime='vim $MyConfigPath/src/export.sh'
  alias vimc='vim $MyConfigPath/config.sh'
  alias sourceb='source ~/.bashrc'
  alias chroot='chroot --userspec=root:root'
  alias cdw='cd $WORKPLACE'
  alias setw='export WORKPLACE=`pwd`'


 # Some more alias to avoid making mistakes:
 # alias rm='rm -i'
 # alias cp='cp -i'
 # alias mv='mv -i'


#autojump
# [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


#iterm2 ssh_rmote_download setting 用来实现iterm的ssh下载服务的

# source $MyConfigPath/src/iterm2_intergration/iterm2_shell_integration.`basename $SHELL`
