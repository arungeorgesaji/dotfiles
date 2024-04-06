#!/bin/bash

# Get the Ethernet status
eth_status=$(nmcli device show | awk '/GENERAL.DEVICE:/ {print $2}' | head -n 1)

# Get the Wi-Fi SSID
wifi_ssid=$(nmcli -t -f NAME,DEVICE connection show --active | grep -e 'wlo1' | awk -F: '{print $1}')

if [ -n "$eth_status" ] && [ "$eth_status" != "wlo1" ]; then
    echo "$eth_status"
elif [ -n "$wifi_ssid" ]; then
    echo "$wifi_ssid"
fi





