#!/bin/sh

a="襤"
b="ﰇ"
c=""

opts="$a\n$b\n$c"

roficmd="rofi -dmenu \
              -theme $HOME/.local/share/rofi/themes/powermenu.rasi \
              -location 1
              -yoffset 25
              -xoffset 3
              -i $@"

choose="$(echo -e "$opts" | $roficmd "Powermenu")"

case $choose in
  "$a")
    shutdown now
    ;;
  "$b")
    reboot
    ;;
  "$c")
    $HOME/.local/bin/lock.sh
    ;;
esac
