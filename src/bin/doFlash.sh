echo "flash ~/img/img/resource.img..........."
sudo rkflashkit flash @resource ~/img/img/resource.img > /dev/null
[ $? ] || exit 1 
echo "flash ~/img/img/linux-boot.zwsd.img.............."
sudo rkflashkit flash @boot ~/img/img/linux-boot.zwsd.img > /dev/null 2>&1
[ $? ] || exit 1 

echo "flash rootfs[Y/N]?"
read INPUT
if test $INPUT = "Y"
then
	sudo rkflashkit flash @linuxroot ~/img/img/linuxroot.img
	[ $? ] || echo "flash error"; exit 1 
fi
