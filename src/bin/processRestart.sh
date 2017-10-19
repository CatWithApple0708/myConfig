#!/bin/bash
 if [ $# != 2 ]
 then
     echo "$0  WorkPlace Commad"
     exit 1
 fi

 WorkPlace=$1
 Command=$2

restartTimes=0
maxRestart=10

while [ true ]
do

	 restartTimes=`expr $restartTimes + 1`
	  [ $restartTimes -gt $maxRestart ] && exit 0

	 echo "PROCESS_RESTART Times $restartTimes"
	 cd $WorkPlace
	 # TMP=`$Command > 1`
	 $Command
     sleep 1
done
