#!/bin/bash

# /bin/bash /home/jccc/.dwm/dwm-status.sh &
# /bin/bash /home/jccc/.dwm/dwmbar-functions/dwm_status_bar_scripts/system_monitoring/cpu_perc.sh &
# /bin/bash /home/jccc/.dwm/dwmbar-functions/dwm_status_bar_scripts/system_monitoring/dsk_util.sh &
# /bin/bash /home/jccc/.dwm/dwmbar-functions/dwm_status_bar_scripts/system_monitoring/ram_perc.sh &
/usr/lib/polkit-kde-authentication-agent-1 &
#picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
#/mnt/Windows/Users/Jccc/Pictures/473_1658460066_hd.jpeg
fcitx5 -dr &
numlockx &
xbindkeys &
picom &
#oneko -tofocus -tora &
# prime-offload
sleep 1s
/bin/sh /home/jccc/.dwm/autostart_wait.sh &
# /home/jccc/Downloads/Clash\ for\ Windows-0.20.21-x64-linux/cfw
# /bin/sh /home/jccc/.dwm/wp-change.sh &
xrdb ~/.Xresources
echo "'"| sudo -S ntfs-3g -o groups=998 /dev/sdb2 /mnt/Hard_Disk_Drive
~/.dwm/wp-change.sh &
~/.dwm/dwm-status.sh &

# wmname LG3D
