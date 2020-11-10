#!/bin/bash
# speedup opatreni
cat /bin/echo > /dev/null
cat /bin/grep > /dev/null


while true
do
dvd=`grep "sr0 " /proc/diskstats| cut -d"r" -f2 | cut -d" " -f10`;ssd=`grep "sda " /proc/diskstats| cut -d"a" -f2 | cut -d" " -f10` ; root=`grep "sdb " /proc/diskstats| cut -d"b" -f2 | cut -d" " -f10` ; scsi1=`grep "sdg " /proc/diskstats| cut -d"g" -f2 | cut -d" " -f10` ; scsi2=`grep "sdj " /proc/diskstats| cut -d"j" -f2 | cut -d" " -f10` ; raid1=`grep "sdi " /proc/diskstats| cut -d"i" -f2 | cut -d" " -f10` ; raid2=`grep "sdh " /proc/diskstats| cut -d"h" -f2 | cut -d" " -f10`

clear

if [ $ssd -gt 0 ]
then
        echo "SD ■■■"
else
        echo "SD ---"
fi

if [ $root -gt 0 ]
then
        echo "HD ■■■"
else
        echo "HD ---"
fi

if [ $scsi1 -gt 0 ]
then
        echo "A1 ■■■"
else
        echo "A1 ---"
fi

if [ $scsi2 -gt 0 ]
then
        echo "A2 ■■■"
else
        echo "A2 ---"
fi
if [ $raid1 -gt 0 ]
then
        echo "D1 ■■■"
else
        echo "D1 ---"
fi
if [ $raid2 -gt 0 ]
then
        echo "D2 ■■■"
else
        echo "D2 ---"
fi
if [ $dvd -gt 0 ]
then
        echo "DV ■■■"
else
        echo "DV ---"
fi

sleep 0.05
done
