#!/bin/bash

mkbootimg --kernel zImage --cmdline 'console=ttyHSL0,115200,n8 androidboot.hardware=find5 lpj=67677 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3' --base 0x80200000 --pagesize 2048 --ramdisk ramdisk.cpio.gz --ramdisk_offset 0x02000000 --output boot.img
exit $?
