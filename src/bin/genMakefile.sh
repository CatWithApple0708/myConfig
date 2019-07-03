#!/bin/bash
_dir=`ls -l |grep "^d" | awk '{print $9}'`
all_dir=`echo $_dir| sed -r 's/include//g'`

all_src=`ls *.c 2>/dev/null ` 
t_src=`ls test_*.c 2>/dev/null `
y_src=`ls *.c -1 2>/dev/null | sed -r '/test_/d' `
 
test_dir=`echo $all_dir | xargs -n1 | grep test_`
normal_dir=`echo $all_dir | xargs -n1 |sed -r '/test_/d' `

for i_dir in $normal_dir
do
	echo "obj-y += $i_dir/"
done

for i_src in $y_src
do
	obj=`echo $i_src | awk -F. '{print $1".o"}'`
	echo "obj-y += $obj"
done

echo -e "\n# Test obj--->\n"
test -z "$t_src" && exit

echo "ifeq (\$(TARGET), test)"
for i_src in $t_src;do
	obj=`echo $i_src | awk -F. '{print $1".o"}'`
	echo "obj-y += $obj"
done


for i_dir in $test_dir
do
	echo "obj-y += $i_dir/"
done

echo "endif"
