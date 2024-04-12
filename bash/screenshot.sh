#!/bin/bash

# Define the file name and path
file_name=$(date +'%Y-%m-%d_%H-%M-%S').png
file_path="$HOME/Pictures/$file_name"

# Take screenshot of selected region and save to file
scrot -s "$file_path"

# Copy screenshot to clipboard
xclip -selection clipboard -t image/png -i "$file_path"
