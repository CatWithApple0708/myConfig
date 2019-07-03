#!/bin/bash
if [ $# != 1 ];then
	echo "$0 target_voice_dir"
fi

voice_file=`ls -1 $1`
output_dir=${1}_8t
work_dir=`pwd`

for __file in $voice_file
do
	target=`echo $work_dir/$1/$__file`

	__output_target_dir=`echo $work_dir/$output_dir/$__file`
	output_target_dir=${__output_target_dir%.*}

	mkdir -p $output_target_dir
	cd $output_target_dir

	cp $target .
	split_1t8 $__file
	rm $__file
done
