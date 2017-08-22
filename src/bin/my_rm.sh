
TRASH_DIR=/home/zhaohe/.trash
test -e $TRASH_DIR || mkdir $$TRASH_DIR

for i in $*; do

	if test -e $TRASH_DIR/$i;then
		rm -rf $TRASH_DIR/$i 
	fi

	mv -f $i $TRASH_DIR/
done
