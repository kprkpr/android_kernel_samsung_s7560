#!/bin/sh
#firsts lines commented if you already have virtualenv2 installed there, or you have python2
#sudo virtualenv2 /opt/venv/
#sudo chmod -R 7777 /opt/venv/
#sudo chmod +x /opt/venv/bin/activate
#For other CROSS_COMPILE change path in makefile
#. /opt/venv/bin/activate
export ARCH=arm
export SUBARCH=arm
make mrproper
make kyle02_defconfig
make -j2 V=0 zImage 
sleep 20
