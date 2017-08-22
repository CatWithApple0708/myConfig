if [ ! $1 ]; then
	echo "$0 IMAGE-FILE"
	exit 1
fi

loopDev=`losetup -f`
sudo losetup $loopDev $1 || exit 1
sudo kpartx -av $loopDev
sleep 2


