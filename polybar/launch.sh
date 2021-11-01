#!/bin/bash

# Terminate already running barinstances
killall -q polybar

#Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
nfig
polybar top &

echo "Polybar launched..."
