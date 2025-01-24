#!/bin/bash
# volume_down.sh

# Get current volume
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')

# Calculate the new volume
new_volume=$((current_volume - 5))

# Ensure volume doesn't drop below 0%
if [ $new_volume -lt 0 ]; then
  new_volume=0
fi

# Set the new volume
pactl set-sink-volume @DEFAULT_SINK@ "${new_volume}%"

