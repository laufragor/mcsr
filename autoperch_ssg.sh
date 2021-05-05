#!/usr/bin/env bash
#
# autoperch version by lauf
# based on reset.sh by neoprene1337

xdotool version &>/dev/null || { echo >&2 "xdotool not installed!"; exit 1; }
wid="$(xdotool search --sync --onlyvisible --name Minecraft)"
[ -z "$wid" ] && { echo >&2 "failed to retrieve minecraft window!"; exit 1; }

# sleep a bit to avoid your keybind of choice ghosting with xdotool inputs
sleep 0.3
xdotool key --window "$wid" Escape
xdotool key --window "$wid" Shift+Tab
xdotool key --window "$wid" Shift+Tab
xdotool key --window "$wid" Return
xdotool key --window "$wid" Shift+Tab
xdotool key --window "$wid" Return
xdotool key --window "$wid" Tab
xdotool key --window "$wid" Return
xdotool key --window "$wid" t; sleep 0.040
xdotool type --window "$wid" "/data merge entity @e[type=ender_dragon,limit=1] {DragonPhase:2}
"
xdotool key --window "$wid" Return
