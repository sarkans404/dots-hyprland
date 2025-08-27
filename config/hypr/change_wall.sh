#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1)

if [ -z "$WALLPAPER" ]; then
  echo "No wallpaper found."
  exit 1
fi


hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"
hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER"

echo "Wallpaper changed via IPC: $WALLPAPER"
