#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

# my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-A-0')
# if [[ $my_laptop_external_monitor = *connected* ]]; then
#    polybar mybar_external &
# fi

echo "Polybar launched..."
