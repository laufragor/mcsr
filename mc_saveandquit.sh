#!/usr/bin/env bash

xdotool version &>/dev/null || { echo >&2 "xdotool not installed!"; exit 1; }
wid="$(xdotool search --sync --onlyvisible --name Minecraft)"
[ -z "$wid" ] && { echo >&2 "failed to retrieve minecraft window!"; exit 1; }

# sleep a bit to avoid ghosting with xdotool inputs
sleep 0.3
xdotool key --window "$wid" Escape
xdotool key --window "$wid" Shift+Tab
xdotool key --window "$wid" Return
