pactl set-sink-volume @DEFAULT_SINK@ +5%
current_volume=$(pamixer --get-volume)
dunstify "Current Volume: $current_volume%" -r 1955



