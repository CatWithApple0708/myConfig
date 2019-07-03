#!/bin/bash
mkdir ${1}_dup
cd ${1}_dup
cd ..

voice=`ls -1 $1`
for v in $voice
do
	cat $1/$v > ${1}_dup/$v
	cat $1/$v >> ${1}_dup/$v
done
