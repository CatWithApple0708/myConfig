#/bin/bash
cd ~/myConfig/src/vim_runtime

echo 'set runtimepath+=~/myConfig/src/vim_runtime/

source ~/myConfig/src/vim_runtime/vimrcs/basic.vim
source ~/myConfig/src/vim_runtime/vimrcs/filetypes.vim
source ~/myConfig/src/vim_runtime/vimrcs/plugins_config.vim
source ~/myConfig/src/vim_runtime/vimrcs/extended.vim

source ~/myConfig/src/vim_runtime/my_configs.vim' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
