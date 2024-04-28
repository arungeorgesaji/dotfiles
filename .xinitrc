#Run dunst
dunst &

#Run low battery alert script in the background
bash/low_battery_alert.sh &

# Set wallpaper using feh
feh --bg-scale Pictures/wallpapers/wallpaper.png

#Run dwmblocks in the background
dwmblocks &

#Run Picom as the compositor in the background
picom -b &

#Run dwm and also execute bin/bash to load the .bashrc functions and aliases
exec /bin/bash -l -c "exec dwm"

