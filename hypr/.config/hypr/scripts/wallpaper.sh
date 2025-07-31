#!/bin/bash

if [ -z $(pidof hyprpaper) ]; then
    echo "hyprpaper is not running"
    exit
fi

WALLPAPER_DIR="$HOME/Wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(fd . "$WALLPAPER_DIR" --max-depth 1 --type file --exclude "*.md" --exclude "$CURRENT_WALL" | shuf -n 1)

# Apply the selected wallpaper
echo "Chosen wallpaper: $WALLPAPER"
hyprctl hyprpaper reload ,"$WALLPAPER"
