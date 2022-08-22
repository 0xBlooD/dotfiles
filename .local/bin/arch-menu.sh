#!/bin/sh

update() {
    upcounter=$(checkupdates+aur | wc -l | head -n 1)
    echo $upcounter
}

off=" SHUTDOWN"
reb=" REBOOT"
log=" LOGOUT"
lock=" LOCK"
up=" $(update) UPDATES"

options="$off\n$reb\n$log\n$lock\n$up"

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
    "$up")
        update
        kitty --hold yay -Syyuu
        ;;
    *)
        update &&
        printf "%s" "$options"
        ;;
esac
