#!/bin/bash
# mute_toggle.sh

# Get current mute status
mute_status=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [ "$mute_status" == "yes" ]; then
  pactl set-sink-mute @DEFAULT_SINK@ toggle
else
  pactl set-sink-mute @DEFAULT_SINK@ toggle
fi

