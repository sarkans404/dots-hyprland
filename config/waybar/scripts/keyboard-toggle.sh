#!/bin/bash

layouts=("us" "ru" "ro")

current=$(hyprctl devices | grep "active keymap" | awk '{print $4}')

for i in "${!layouts[@]}"; do
  if [[ "${layouts[$i]}" == "$current" ]]; then
    index=$i
    break
  fi
done

next_index=$(( (index + 1) % ${#layouts[@]} ))
next_layout="${layouts[$next_index]}"

hyprctl switchxkblayout "at-translated-set-2-keyboard" next
