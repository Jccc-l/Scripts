#!/bin/sh
dev_name=$(xinput list|grep Mouse|grep -v Key|awk '{print $6}'|awk  -F "=" '{print $2}')
# dev_name=$(xinput --list |grep Logitech|grep -v Keyboard|awk '{print $7}'|awk -F "=" '{print $2}')

prop_of_dev=$(xinput --list-props $dev_name|grep Speed|grep -v Default|awk -F "[()]" '{print $2}')

echo $dev_name
echo $prop_of_dev
xinput --set-prop $dev_name $prop_of_dev --type=float -1
