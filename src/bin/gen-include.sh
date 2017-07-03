#!/bin/bash
PreFix="CFLAGS += -I \$(TOPDIR)"
includeFILE=`find -name include`
for i in $includeFILE
do
	tmp="$PreFix$i"
	echo "$tmp" | sed 's/\.//'
done
