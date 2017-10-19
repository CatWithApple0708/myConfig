#!/bin/bash
# PreFix="CFLAGS += -I \$(TOPDIR)"
PreFix="-I `pwd`"
includeFILE=`find ./ -name include`
for i in $includeFILE
do
	tmp="$PreFix$i"
	echo -e "$tmp\c " | sed 's/\.//'
	echo -e " \c"
done
