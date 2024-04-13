#Run low battery alert script in the background
bash/low_battery_alert.sh &

#Run dunst
dunst &

# Set wallpaper using feh
feh --bg-scale Pictures/wallpapers/wallpaper.webp

#Run dwmblocks in the background
dwmblocks &

#Run dwm and also execute bin/bash to load the .bashrc functions and aliases
exec /bin/bash -l -c "exec dwm"

