export KERNEL=/home/zhaohe/Space/3128
export TOOLS=$MyConfigPath/src/bin


export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JRE_HOME=$JAVA_HOME/jre

#程序运行时加载库，库的地址
export LD_LIBRARY_PATH=/lib/x86_64-linux-gnu/:/usr/lib/x86_64-linux-gnu/:/usr/aarch64-linux-gnu/lib/
export DT_RUNPATH=/lib/x86_64-linux-gnu/:/usr/lib/x86_64-linux-gnu/:/usr/aarch64-linux-gnu/lib/
export LIBRARY_PATH=.

export PATH=$PATH:$TOOLS
export PATH=$PATH:$TOOLS/Linux_Upgrade_Tool_v1.2
export PATH=$PATH:/home/zhaohe/myConfig/src/crosstool-ng-1.23.0/bin
# export PATH=$PATH:/home/zhaohe/myConfig/src/crossTools/arm_gcc_he-17-7-12/bin
export PATH=/home/zhaohe/Space/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/:$PATH
export __WORK_PLACE=/home/zhaohe/Space/git


# go Enviroment
export GOPATH=~/hacking
export PATH=$PATH:/usr/local/go/bin/
export PATH=$PATH:$GOPATH/bin/
