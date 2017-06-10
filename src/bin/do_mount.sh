#!/bin/sh
if [ -z "$1" ]
then
    echo "Usage: $0 chroot_path"
    exit -1
else
sudo    mount --bind /dev $1/dev
sudo    mount --bind /dev/pts $1/dev/pts
sudo    mount --bind /proc $1/proc
sudo    mount --bind /sys $1/sys
sudo    cp /etc/resolv.conf $1/etc/resolv.conf
fi

