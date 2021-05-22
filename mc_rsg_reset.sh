#!/usr/bin/env bash
#
# reset.sh by neoprene1337
# small edits by lauf#6785

delay="0.050"

xdotool version &>/dev/null || { echo >&2 "xdotool not installed!"; exit 1; }
wid="$(xdotool search --sync --onlyvisible --name Minecraft)"
[ -z "$wid" ] && { echo >&2 "failed to retrieve minecraft window!"; exit 1; }

# sleep a bit to avoid F8 ghosting with xdotool inputs
sleep 0.3
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
# easy difficulty
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Return; sleep "$delay"
