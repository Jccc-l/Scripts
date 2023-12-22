#!/bin/bash

echo "'"|sudo -S wpa_supplicant -c /etc/wpa_supplicant/wpa_supplicant.conf -i wlp5s0 -B &&sudo systemctl start dhcpcd
# echo "'"|sudo -S wpa_supplicant -c /etc/wpa_supplicant/wpa_supplicant.conf -i wlan0 -B &&sudo systemctl start dhcpcd
# echo "'"|sudo -S systemctl start dhcpcd
# echo "'"|sudo -S ip link set wlp3s0 up
# echo "'"|sudo -S iw wlp3s0 connect "SCNUNET"
