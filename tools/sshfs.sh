#!/bin/bash
if [ $# != 2 ]; then
	echo "$0 login_name@ipaddress dir"
	exit -1
fi
rm -r $HOME/tmp/$2
mkdir -p $HOME/tmp/$2
ln -s $HOME/tmp/$2

sshfs ${1}:/ $HOME/tmp/$2

