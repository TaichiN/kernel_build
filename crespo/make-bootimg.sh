#!/bin/bash

mkbootimg --kernel zImage --cmdline 'console=ttyFIQ0 no_console_suspend' --base 0x30000000 --pagesize 4096 --ramdisk ramdisk.cpio.gz --output boot.img
exit $?
