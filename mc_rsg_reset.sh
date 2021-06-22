#!/usr/bin/env bash
#     by Lauf#3696 - original version by neoprene1337

# 1. This is 70ms delay at the end of each world creation screen - it's very safe.
#     You can lower it - just make sure that *each screen* of world creation gets shown in your recording

# 2. Adjust main_menu_wait according to how fast your pc quits the world

delay="0.070"  
main_menu_wait="2.0" 


xdotool version &>/dev/null || { echo >&2 "xdotool not installed!"; exit 1; }
wid="$(xdotool getwindowfocus)"
[[ "$(xdotool getwindowname $wid)" = Minecraft* ]] || exit

sleep 0.2    # to avoid ghosting between the key you use for this script, and xdotool inputs
xdotool key --window "$wid" Escape
xdotool key --window "$wid" Shift+Tab
xdotool key --window "$wid" Return
sleep $main_menu_wait      # wait for main menu
xdotool key --window "$wid" Tab;
xdotool key --window "$wid" Return;
xdotool key --window "$wid" Shift+Tab;
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Return;
# easy difficulty + create
xdotool key --window "$wid" Tab;
xdotool key --window "$wid" Tab;
xdotool key --window "$wid" Return;
xdotool key --window "$wid" Return;
xdotool key --window "$wid" Return;
xdotool key --window "$wid" Shift+Tab;
xdotool key --window "$wid" Shift+Tab;
xdotool key --window "$wid" Shift+Tab;
xdotool key --window "$wid" Shift+Tab; sleep "$delay"
xdotool key --window "$wid" Return; 
