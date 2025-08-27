#!/bin/bash

export XDG_RUNTIME_DIR="/run/user/$(id -u)"

if ! pgrep -x gnome-keyring-daemon > /dev/null; then
    eval "$(gnome-keyring-daemon --start --components=secrets,ssh,gpg)" > ~/.cache/keyring.env
    echo "Keyring started."
else
    echo "Keyring already running."
fi
