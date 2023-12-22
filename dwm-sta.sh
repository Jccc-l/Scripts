#!/bin/bash
dwm_alsa () {
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
	# VOL_OFF=$(amixer sget Master|awk 'END{print}'|awk -F '[][]' '{print $4}')
    printf "%s" "$SEP1"
    # if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$VOL" -eq 0 ]; then
            printf "🔇"
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            printf "🔈 %s%%" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            printf "🔉 %s%%" "$VOL"
        else
            printf "🔊 %s%%" "$VOL"
        fi
    # else
    #     if [ "$VOL" -eq 0 ]; then
    #         printf "MUTE"
    #     elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
    #         printf "VOL %s%%" "$VOL"
    #     elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
    #         printf "VOL %s%%" "$VOL"
    #     else
    #         printf "VOL %s%%" "$VOL"
    #     fi
    # fi
    printf "%s\n" "$SEP2"
}

print_ver=$(uname -r | awk -F "-" '{print $1}')
bat=$( acpi | awk -F "," '{print $2}'|awk -F " " '{print $1}')
#print_date=$(date|awk -v OFS='   ' '{print $2,$3,$4}')
VOL_OFF=$(amixer sget Master|awk 'END{print}'|awk -F '[][]' '{print $4}')
xsetroot -name "$bat [$(dwm_alsa),$VOL_OFF]  $print_ver"
exit 0
