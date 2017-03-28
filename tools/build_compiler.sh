 #/bin/bash
if [ $# != 1 ] ; then
	echo "USAGE: $0 cross_compiler_dir_name"
	exit 1;
fi
cross_compiler=$1
rm ./current_compiler

ln -s ${cross_compiler} current_compiler

echo link current_compiler to ${cross_compiler}
