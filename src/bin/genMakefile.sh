dir=`ls -l |grep "^d" | awk '{print $9}'`
for i_dir in $dir
do
	if test "include" =  $i_dir; then
		continue
	fi

	echo "obj-y += $i_dir/"
done

src=`ls *.c 2>/dev/null ` 
for i_src in $src
do
	obj=`echo $i_src | awk -F. '{print $1".o"}'`
	echo "obj-y += $obj"
done
