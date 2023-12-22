#!/bin/sh

# A dwm_bar function to show the master volume of PulseAudio
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: pamixer

dwm_pulse () {
    VOL=$(pamixer --get-volume-human | tr -d '%')
    
    printf "%s" "$SEP1"
    # if [ "$IDENTIFIER" = "unicode" ]; then
    #     if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
    #         printf "🔇"
    #     elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
    #         printf "🔈 %s%%" "$VOL"
    #     elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
    #         printf "🔉 %s%%" "$VOL"
    #     else
    #         printf "🔊 %s%%" "$VOL"
    #     fi
    # else
    #     if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
    #         printf "MUTE"
    #     elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
    #         printf "VOL %s%%" "$VOL"
    #     elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
    #         printf "VOL %s%%" "$VOL"
    #     else
    #         printf "VOL %s%%" "$VOL"
    #     fi
    # fi
	if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
		printf ""
	elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 10 ]; then
		printf "󰝤"
	elif [ "$VOL" -gt 10 ] && [ "$VOL" -le 20 ]; then
		printf "󰝤󰝤"
	elif [ "$VOL" -gt 20 ] && [ "$VOL" -le 30 ]; then
		printf "󰝤󰝤󰝤"
	elif [ "$VOL" -gt 30 ] && [ "$VOL" -le 40 ]; then
		printf "󰝤󰝤󰝤󰝤"
	elif [ "$VOL" -gt 40 ] && [ "$VOL" -le 50 ]; then
		printf "󰝤󰝤󰝤󰝤󰝤"
	elif [ "$VOL" -gt 50 ] && [ "$VOL" -le 60 ]; then
		printf "󰝤󰝤󰝤󰝤󰝤󰝤"
	elif [ "$VOL" -gt 60 ] && [ "$VOL" -le 70 ]; then
		printf "󰝤󰝤󰝤󰝤󰝤󰝤󰝤"
	elif [ "$VOL" -gt 70 ] && [ "$VOL" -le 80 ]; then
		printf "󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤"
	elif [ "$VOL" -gt 80 ] && [ "$VOL" -le 90 ]; then
		printf "󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤"
	elif [ "$VOL" -gt 90 ] && [ "$VOL" -le 100 ]; then
		printf "󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤"
	else
		printf "󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤󰝤"
	fi
    printf "%s\n" "$SEP2"
}

#dwm_pulse
