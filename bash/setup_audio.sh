sudo pacman -Rns pulseaudio pulseaudio-bluetooth
sudo pacman -S pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber bluez-plugins
sudo pacman -Rns pipewire-session-manager
systemctl --user daemon-reload
systemctl --user enable --now wireplumber pipewire pipewire-pulse
