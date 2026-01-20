#Run dunst
dunst &

#Run low battery alert script in the background
bash/low_battery_alert.sh &

#Set monitor layout using xrandr
xrandr \
  --output eDP-1 --mode 1920x1200 --primary \
  --output DP-1 --mode 2560x1440 --right-of eDP-1
HDMI
# Set wallpaper using feh
feh --bg-fill --no-fehbg --randomize Pictures/wallpapers/drstone.jpg

#Run dwmblocks in the background
dwmblocks &

#Run Picom as the compositor in the background
picom -b &

#Run dwm and also execute bin/bash to load the .bashrc functions and aliases
exec /bin/bash -l -c "exec dwm"

