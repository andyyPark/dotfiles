#!/bin/bash

keyboard=(
    icon.drawing=off
    label.font="$FONT:Semibold:14.0"
    script="$PLUGIN_DIR/keyboard.sh"
    label.padding_left=6
    label.padding_right=6
)

sketchybar --add item keyboard right        \
           --set keyboard "${keyboard[@]}"  \
           --add event keyboard_change "AppleSelectedInputSourcesChangedNotification" \
           --subscribe keyboard keyboard_change
