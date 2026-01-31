#!/usr/bin/env bash

sleep 5

polybar-msg cmd quit

# Launch bar1 and bar2
polybar tokyo 2>&1 | tee -a /tmp/polybar1.log &
disown

echo "Bars launched..."
