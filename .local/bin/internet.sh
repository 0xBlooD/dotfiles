#!/bin/sh

case $1 in
  --icon)
    if [[ $(cat /sys/class/net/enp1s0f1/carrier) == 1 ]]; then
      printf "%s" ""
    elif [[ $(cat /sys/class/net/wlp2s0/carrier) == 1 ]]; then
      printf "%s" ""
    else
      printf "%s" ""
    fi
    ;;
  --editor)
    nm-connection-editor
    ;;
esac
