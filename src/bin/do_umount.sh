#!/bin/sh
if [ -z "$1" ]
then
    echo "Usage: $0 chroot_path"
    exit -1
else
sudo    umount $1/dev/pts
sudo    umount $1/dev
sudo    umount $1/proc
sudo    umount $1/sys
fi

