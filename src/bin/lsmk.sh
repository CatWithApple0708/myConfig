if [ ! $1 ]
then
	echo "lsmk.sh Mkdir"
	exit 1
fi
MakefileS=`find  $1 -name *.mk`
echo $MakefileS
for i in $MakefileS
do
	echo "ln -s $i Makefile"
done

