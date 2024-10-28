#!/bin/sh

# Power menu script using tofi

CHOSEN=$(printf "🔐 Lock\n🟠 Reboot\n🔴 Shutdown\n" | rofi -dmenu)

case "$CHOSEN" in
"🔐 Lock") lockscreen ;;
"🟠 Reboot") reboot ;;
"🔴 Shutdown") poweroff ;;
*) exit 1 ;;
esac
