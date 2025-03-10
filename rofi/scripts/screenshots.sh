#!/bin/bash

HYPRSHOT_PATH="$HOME/.local/bin/hyprshot"  # Get the correct path to hyprshot

options="Fullscreen\nActive Window\nRegion\nClipboard"

chosen=$(echo -e "$options" | rofi -dmenu -p "Take a screenshot:")

case "$chosen" in
    "Fullscreen")
        $HYPRSHOT_PATH -m output --clipboard-only ;;
    "Active Window")
        $HYPRSHOT_PATH -m window --clipboard-only ;;  
    "Region")
        $HYPRSHOT_PATH -m region --clipboard-only ;;  
    "Clipboard")
        $HYPRSHOT_PATH -m region --clipboard-only ;;  
    *)
        exit 1 ;; 
esac
