#!/bin/bash
#Disk Uttillization checker
echo "check disk utillization"
disk_size=`df -h | grep /dev/sda1 |awk '{print $5}'|cut -d '%' -f1 `
echo "current disk Size :$disk_size%"
if [ $disk_size -gt 80 ];
then
   echo "Disk utiallization is greater than 80%"
else
   echo "Disk has enough space"
fi
