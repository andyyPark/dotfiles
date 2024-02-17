#!/bin/bash

MSG_COUNT=$(sqlite3 ~/Library/Messages/chat.db "SELECT text FROM message WHERE is_read=0 AND is_from_me=0 AND text!='' AND date_read=0" | wc -l | awk '{$1=$1};1')

if [[ "$MSG_COUNT" != "0" ]]; then
    ICON="􁋭"
else
    ICON="􀌥"
fi

sketchybar --set "$NAME" icon="$ICON" label="$MSG_COUNT"
