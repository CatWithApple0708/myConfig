#/bin/bash

sudo apt-get install unity-tweak-tool

#install iterm2_interation.sh用来实现iterm的ssh下载服务 *update
source ./tools/iterm2_itegration_install.sh

#change wallpaper
source ./src/wallpaper/set_wallpaper.sh
echo "Creat Work dir"

#mkdir
source ./tools/creat_home_dir.sh
