#!/bin/sh

killall -q polybar

polybar -r main-laptop 2>&1 | tee -a /tmp/polybar.log & disown
