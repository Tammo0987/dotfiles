#!/usr/bin/env bash

killall -q polybar

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar-top.log
polybar top 2>&1 | tee -a /tmp/polybar-top.log & disown
polybar second 2>&1 | tee -a /tmp/polybar-second.log & disown

echo "Bars launched..."