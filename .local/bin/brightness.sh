#!/bin/sh

notification ()
{

    if [[ "$(xbacklight -get | cut -d "." -f 1)" -eq 0 ]]; then

        icon_path="/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-off-symbolic.svg"
        
        dunstify "Brightness OFF" -i $icon_path -r 999

    elif [[ "$(xbacklight -get | cut -d "." -f 1)" -le 35 ]]; then

        icon_path="/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-low-symbolic.svg"

    elif [[ "$(xbacklight -get | cut -d "." -f 1)" -le 69 ]]; then

        icon_path="/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-medium-symbolic.svg"

    elif [[ "$(xbacklight -get | cut -d "." -f 1)" -le 100 ]]; then

        icon_path="/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-high-symbolic.svg"

    fi

    dunstify "$(xbacklight -get | cut -d "." -f 1)%" -i $icon_path -r 999
}

case $1 in
    --up)
        xbacklight -inc 5%
        notification
        ;;
    --down)
        xbacklight -dec 5%
        notification
        ;;
esac
