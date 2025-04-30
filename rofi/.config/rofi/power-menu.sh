#!/bin/sh

# Power menu script using tofi

CHOSEN=$(printf "🔐 Lock\n🟠 Reboot\n🔴 Shutdown\n🖥️ Duplicate Screen\n" | rofi -dmenu)

case "$CHOSEN" in
"🔐 Lock") i3lock ;;
"🟠 Reboot") reboot ;;
"🔴 Shutdown") poweroff ;;
"🖥️ Duplicate Screen") xrandr --output HDMI-A-0 --mode 1920x1080 --same-as eDP ;;
"🖥️ Extend Screen") xrandr --output HDMI-A-0 --auto --right-of eDP ;;
*) exit 1 ;;
esac
