#!/bin/bash
#pamixer=$(pamixer --get-default-sink|awk 'END{print}'|awk '{print $1}')

#sh -c "pactl set-sink-mute $pamixer toggle"
sh -c "pamixer -t"
sh /home/jccc/.dwm/dwm-status-refresh.sh
