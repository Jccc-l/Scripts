result=$(ps ax|grep -v grep|grep trayer|grep -v cmp)
if [ "$result" == "" ]; then
	eval "trayer --edge top --transparent true --expand false --align right --widthtype percent --width 6% --SetDockType false --tint 0x88888888 &"
	eval "optimus-manager-qt"
	eval "nm-applet &"
	eval "blueman-applet &"
	# eval "blueman-tray &"
else
	eval "killall trayer"
	eval "killall nm-applet"
	eval "killall blueman-applet"
	eval "killall optimus-manager-qt"
	# eval "killall blueman-tray"
fi
