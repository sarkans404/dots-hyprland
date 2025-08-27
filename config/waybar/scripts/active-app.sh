#!/bin/bash

app_class=$(hyprctl activewindow -j | jq -r '.class // "N/A"')
echo "$app_class"

