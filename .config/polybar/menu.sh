#!/bin/sh

off=" SHUTDOWN"
reb=" REBOOT"
log=" LOGOUT"
lock=" LOCK"

options="$off\n$reb\n$log\n$lock"

roficmd="rofi -dmenu \
              -theme $HOME/.local/share/rofi/themes/scripts.rasi \
              -location 1 \
              -yoffset 25 \
              -xoffset 2 \
              -i $@"

choose="$(echo -e "$options" | $roficmd "Powermenu")"

case "$choose" in
    "$off")
        systemctl poweroff
        ;;
    "$reb")
        systemctl reboot
        ;;
    "$log")
        i3-msg exit
        ;;
    "$lock")
        sh $HOME/.config/i3/lock.sh
        ;;
    *)
        echo -e "$options"
        ;;
esac
