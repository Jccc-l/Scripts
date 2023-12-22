#!/bin/bash

#feh --recursive --randomize --bg-fill ~/Pictures/wallpapers/ghibili
# img="$(find /mnt/Hard_Disk_Drive/Wallpaper/ -type f |grep -v '古风\|带鱼屏\|COS\|手机\|竖屏\|平板\|竖'|grep -v '4-3\|9-16'|shuf -n 1)"
img="$(find /mnt/Hard_Disk_Drive/Wallpaper/ -type f|grep -v '美女\|性感\|.zip\|清纯\|古风\|丝\|JK\|精灵弓\|LiangXing\|女星\|COS\|欧美\|杨超越\|李知恩\|黑白\|拼接\|二次元\|Logancure'|grep 4K|shuf -n 1)"
echo $img
feh --bg-max $img
# feh --recursive --randomize --bg-fill /mnt/Windows/c/Users/Jccc/Pictures/4K/
# feh --recursive --randomize --bg-scale /home/jccc/.wallpaper/
#feh --recursive --randomize --bg-fill ~/Pictures/wallpapers/view
# img=$(shuf /home/jccc/pic.md -n 1|awk -F "\"" '{print $2}')
# img="$(shuf /home/jccc/pic.md -n 1 | awk -F "[()]" '{print $2}')"
# img="$(shuf /home/jccc/wallpapers.md -n 1|awk -F "\"" '{print $2}')"
# echo $img
# feh --bg-fill "$img"
