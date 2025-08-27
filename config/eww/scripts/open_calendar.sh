#!/usr/bin/env bash
# ~/.config/eww/scripts/open_calendar.sh

if eww close calendar 2>/dev/null; then
  exit 0
fi

eww open calendar
