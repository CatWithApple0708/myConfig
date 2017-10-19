#!/bin/bash
# WorkPlace=/GateWay/bin
if [ $# != 2 ]
then
	echo "$0  WorkPlace Commad"
	exit 1
fi

WorkPlace=$1
Command=$2
while true
do
	$Command
done
