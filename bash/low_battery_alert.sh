#!/bin/bash

while true; do

    #Get battery percentage
    battery_percentage=$(upower -i $(upower -e | grep BAT) | awk '/percentage/ {gsub(/%/, "", $2); print $2}')

    #Check if the battery percentage is less than 10 in that case alert the user that that    #the bettery is extremely low,if its not less than 10,check if its less than 20 and in    #that case alert the user that the battery is low
    if [[ $battery_percentage -le 10 ]]; then
        dunstify "Your battery is extremely low" -u critical
    elif [[ $battery_percentage -le 20 ]]; then
        dunstify "Your battery is low" -u critical
    fi

    # Sleep for 30 seconds before checking again
    sleep 30
done

