#!/bin/bash
# volume_up.sh

# Get current volume
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')

# Calculate the new volume
new_volume=$((current_volume + 5))

# Ensure volume doesn't exceed 100%
if [ $new_volume -gt 100 ]; then
  new_volume=100
fi

# Set the new volume
pactl set-sink-volume @DEFAULT_SINK@ "${new_volume}%"

