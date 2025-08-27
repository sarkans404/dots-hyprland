#!/bin/bash
SELECTION=$( (echo " Clear clipboard"; cliphist list) | wofi --dmenu )

if [[ "$SELECTION" == " Clear clipboard" ]]; then
    cliphist wipe
else
    echo "$SELECTION" | cliphist decode | wl-copy
fi
