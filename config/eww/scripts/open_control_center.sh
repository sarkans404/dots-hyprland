#!/usr/bin/env bash
# ~/.config/eww/scripts/open_control_center.sh

if eww close control_center 2>/dev/null; then
  exit 0
fi

eww open control_center
