IP=$1
sshfs root@$1:/tmp /home/zhaohe/Space/board_mount_dir/tmp
sshfs root@$1:/usr/local/ /home/zhaohe/Space/board_mount_dir/armlocal
