#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar -c $HOME/.config/polybar/bspwm-polybar.conf main &
#polybar main

laptop_external_monitor=$(xrandr --query | grep 'DP-1')
if [[ $laptop_external_monitor = *connected* ]]; then
	polybar -c $HOME/.config/polybar/bspwm-polybar.conf main_external &
fi
