#!/bin/bash

# Check if sound is currently muted
mute_status=$(pamixer --get-mute)

# Toggle mute
pamixer --toggle-mute

# Send notification based on the new mute status
if [ "$mute_status" = "true" ]; then
    dunstify "The sound has been unmuted" -r 1955
else
    dunstify "The sound has been muted" -r 1955
fi

