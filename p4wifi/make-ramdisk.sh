#!/bin/bash

cd ramdisk
# make sure all directories are created because git doesn't save empty directories
mkdir -p data dev proc sbin sys system
chmod 750 init*
chmod 750 sbin/adbd
chmod 644 default.prop
chmod 640 fstab.$DEVICE
chmod 644 ueventd*
chmod 644 lpm.rc
find . | cpio -o -H newc | gzip > ../ramdisk.cpio.gz
