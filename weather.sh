#!/bin/bash

curl -H "Accept-Language: en" "wttr.in/南海区桃园东路?0?T?q" >~/.dwm/weather
#date>>~/.dwm/weather
curl -s "wttr.in/南海区桃园东路?format=1"|awk '{print $1$2}'>~/.dwm/weather_status

chmod -x ~/.dwm/weather
chmod -x ~/.dwm/weather_status

cal >> ~/.dwm/weather
