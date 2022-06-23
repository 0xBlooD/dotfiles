/bin/sh

killall -q polybar

polybar -r main 2>&1 | tee -a /tmp/polybar.log & disown
