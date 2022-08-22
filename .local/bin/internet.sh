#!/bin/sh

wifi=$(cat /sys/class/net/wlp2s0/carrier)
eth=$(cat /sys/class/net/enp1s0f1/carrier)

case $1 in
    --icon)
        if [[ $eth == 1 ]]; then
            printf "%s" ""
        elif [[ $wifi == 1 ]]; then
            printf "%s" ""
        else
            printf "%s" ""
        fi
        ;;
    --menu)
        ;;
    *)
        ;;
esac
