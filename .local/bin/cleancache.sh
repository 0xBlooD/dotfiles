#!/bin/sh

sudo sh -c "echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a"
sudo sh -c "rm -rf /home/blood/.cache/*"
