#!/bin/sh

notification ()
{

    if [[ "$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $4 }')" == off ]]; then

        icon_path="/usr/share/icons/Papirus-Dark/16x16/actions/audio-volume-muted.svg"

        dunstify "Mute" -i $icon_path -r 666   

    else

        if [[ "$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }' | cut -d "%" -f 1)" -le 34 ]]; then

            icon_path="/usr/share/icons/Papirus-Dark/16x16/actions/audio-volume-low.svg"

        elif [[ "$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }' | cut -d "%" -f 1)" -le 69 ]]; then

            icon_path="/usr/share/icons/Papirus-Dark/16x16/actions/audio-volume-medium.svg"

        elif [[ "$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }' | cut -d "%" -f 1)" -le 100 ]]; then

            icon_path="/usr/share/icons/Papirus-Dark/16x16/actions/audio-volume-high.svg"

        fi

    fi

    dunstify "$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')" -i $icon_path -r 666
}

case $1 in
    --up)
        amixer sset Master 5%+
        notification
        ;;
    --down)
        amixer sset Master 5%-
        notification
        ;;
    --mute)
        amixer sset Master toggle
        notification
        ;;
esac
