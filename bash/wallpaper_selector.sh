#!/bin/bash

dir="$HOME/Pictures/wallpapers"

mapfile -t files < <(find "$dir" -type f)

while true; do
    display=$(printf "%s\n" "${files[@]}" | xargs -n1 basename | sed 's/\.[^.]*$//')
    
    choice=$(printf "%s\n" "$display" | rofi -dmenu -p "Wallpaper" -i)
    
    [ -z "$choice" ] && break
    
    for f in "${files[@]}"; do
        name=$(basename "$f")
        clean=${name%.*}
        [ "$clean" = "$choice" ] && {
            feh --bg-fill --no-fehbg "$f"
            break
        }
    done
done
