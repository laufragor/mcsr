#!/usr/bin/env bash
#     made by Lauf#3696 - original version by neoprene1337

# 1. Record yourself using this script, and make sure that *each world creation screen* gets shown in the recording.
#     play with the delay if that doesn't happen, and try again

delay="0.040"  

xdotool version &>/dev/null || { echo >&2 "xdotool not installed!"; exit 1; }
wid="$(xdotool getwindowfocus)"
[[ "$(xdotool getwindowname $wid)" = Minecraft* ]] || exit

# quit world
sleep 0.2  
xdotool windowactivate --sync "$wid" key Escape
xdotool windowactivate --sync "$wid" key Shift+Tab
xdotool windowactivate --sync "$wid" key Return

# wait for main menu
while [[ "$(xdotool getwindowname $wid)" = *player ]]; do
  :    # wait
done
sleep 0.5

# create world
xdotool windowactivate --sync "$wid" key Tab;
xdotool windowactivate --sync "$wid" key Return;
xdotool windowactivate --sync "$wid" key Shift+Tab;
xdotool windowactivate --sync "$wid" key Shift+Tab; sleep "$delay"
xdotool windowactivate --sync "$wid" key Return;
xdotool windowactivate --sync "$wid" key Tab;
xdotool windowactivate --sync "$wid" key Tab;
xdotool windowactivate --sync "$wid" key Return;
xdotool windowactivate --sync "$wid" key Return;
xdotool windowactivate --sync "$wid" key Return;
xdotool windowactivate --sync "$wid" key Shift+Tab;
xdotool windowactivate --sync "$wid" key Shift+Tab;
xdotool windowactivate --sync "$wid" key Shift+Tab;
xdotool windowactivate --sync "$wid" key Shift+Tab; sleep "$delay"
xdotool windowactivate --sync "$wid" key Return; 
