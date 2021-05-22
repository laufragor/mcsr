#!/usr/bin/env bash
#
# reset.sh by neoprene1337
# ssg version by lauf#6785

delay="0.05"

xdotool version &>/dev/null || { echo >&2 "xdotool not installed!"; exit 1; }
wid="$(xdotool search --sync --onlyvisible --name Minecraft)"
[ -z "$wid" ] && { echo >&2 "failed to retrieve minecraft window!"; exit 1; }
# sleep a bit to avoid F8(your keybind of choice) ghosting with xdotool inputs
sleep 0.3
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
# wait for main menu *** adjust time according to your pc ***
sleep 2

# create new world + name
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" ctrl+a; sleep "$delay"
xdotool type --window "$wid" "NEW SSG PAGMAN"; sleep "$delay"
# easy difficulty
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
# seed + create
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool type --window "$wid" 2483313382402348964; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay";
xdotool key --window "$wid" Return; sleep "$delay"
