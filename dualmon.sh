#!/bin/bash

Num=$(xrandr | grep connect|grep -v disconn|awk '{print $1}'|wc -l)
device=$(xrandr | grep connect|grep -v disconn|awk '{print $1}')

maindev=$(echo $device|awk '{print $1}')

for i in $device
do
	if [ $i = $maindev ]
	then
		eval "xrandr --output $i --mode 2560x1440 --rate 170 --dpi 96 --auto"
	else
		eval "xrandr --output $i --mode 2560x1440 --rate 170 --dpi 96 --right-of $maindev --auto"
	fi
done
