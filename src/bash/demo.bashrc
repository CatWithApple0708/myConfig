 # ~/.bashrc: executed by bash(1) for non-login shells.

 # Note: PS1 and umask are already set in /etc/profile. You should not
 # need this unless you want different defaults for root.
 # PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
 # umask 022
 PS1="\[\033[0;32m\]\u@\W$\[\033[00m\]"
 # You may uncomment the following lines if you want `ls' to be colorized:
  export LS_OPTIONS='--color=auto'
  eval "`dircolors`"
  alias ls='ls $LS_OPTIONS'
  alias ll='ls $LS_OPTIONS -l'
  alias l='ls $LS_OPTIONS -lA'

 # Some more alias to avoid making mistakes:
 # alias rm='rm'
 # alias cp='cp'
 # alias mv='mv'

 export JAVA_HOME=/usr/lib/jvm/jdk8
 export JRE_HOME=${JAVA_HOME}/jre
 export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
 export PATH=${JAVA_HOME}/bin:$PATH
