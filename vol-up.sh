#!/bin/bash

#pamixer=$(pamixer --get-default-sink|awk 'END{print}'|awk '{print $1}')

#sh -c "pactl set-sink-mute $pamixer false ; pactl set-sink-volume $pamixer +2%"
pamixer -i 3
bash /home/jccc/.dwm/dwm-status-refresh.sh
