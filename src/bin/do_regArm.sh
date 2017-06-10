#!/bin/sh
[ -d /proc/sys/fs/binfmt_misc ] ||sudo  modprobe binfmt_misc
[ -f /proc/sys/fs/binfmt_misc/register ] || sudo mount binfmt_misc -t binfmt_misc /proc/sys/fs/binfmt_misc

sudo echo -1 > /proc/sys/fs/binfmt_misc/status
sudo echo ':arm:M::\x7fELF\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x28\x00:\xff\xff\xff\xff\xff\xff\xff\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff:/usr/bin/qemu-static-arm-binfmt:P' > /proc/sys/fs/binfmt_misc/register

