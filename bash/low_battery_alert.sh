#!/bin/bash

while true; do

    #Get battery percentage
    battery_percentage=$(upower -i $(upower -e | grep BAT) | awk '/percentage/ {gsub(/%/, "", $2); print $2}')

    #Check if the laptop is charging
    if acpi -a | grep -q 'on-line'; then
        :

    #Check if the battery is less than 10% and if it is notify user that their battery is     #extremely low
    elif [[ $battery_percentage -le 10 ]]; then
        dunstify "Your battery is extremely low" -u critical

    #Check if the battery is less than 10% and if it is notify user that their battery is     #low
    elif [[ $battery_percentage -le 20 ]]; then
        dunstify "Your battery is low" -u critical
    fi

    # Sleep for 1 minute before checking again
    sleep 60
done

