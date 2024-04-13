pactl set-sink-volume @DEFAULT_SINK@ +5% && dunstify "Current Volume: $(pactl list sinks | grep 'Volume:' | head -n 1 | awk '{print $5}') " -r 1955


