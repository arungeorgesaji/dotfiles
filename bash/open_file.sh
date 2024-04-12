#!/bin/sh

# Function to check if a file is a supported media file
is_supported_media() {
    file_type=$(file -b --mime-type "$1")
    case "$file_type" in
        video/*) return 0 ;;
        audio/*) return 0 ;;
        image/*) return 0 ;;
        *) return 1 ;;
    esac
}

# Function to open a file with VLC
open_with_vlc() {
    vlc "$1" 
}

# Function to open a file in Neovim
open_with_nvim() {
    nvim "$1"
}

# Function to handle a directory(open in a terminal)
handle_directory() {
    dir="$1"
    kitty --single-instance "$dir" &
}

# Main function
main() {
    target="$1"
    
    #Check if its a directory if yes open it in terminal
    if [ -d "$target" ]; then
        handle_directory "$target"

    #Check if its a multimedia file supported by vlc,if yes open it using vlc
    elif is_supported_media "$target"; then
        open_with_vlc "$target"

    #If it's not a multimedia file or a directory open it using neovim(nvchad) 
    else
        open_with_nvim "$target"
    fi
}

#Run main function
main "$1"

