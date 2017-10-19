if [ -z "$1" ]
then
    echo "Usage: $0  workpalce"
    exit -1
fi
echo "refresh workpalce"
cd $1

while true
do
	ctags -R  .
	sleep 2
	echo -n ">"
done
