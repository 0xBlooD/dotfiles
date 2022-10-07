#!/bin/sh

# Clear free page cache, dentries and inodes
echo 3 > /proc/sys/vm/drop_caches

# Clear out swap
swapoff -a && swapon -a

# Clear cache from pkg and yay, remove unused repositories
yay -Scc --noconfirm
