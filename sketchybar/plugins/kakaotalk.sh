#!/bin/bash

KAKAOTALK_COUNT=$(lsappinfo -all info -only StatusLabel KakaoTalk | sed -nr 's/\"StatusLabel\"=\{ \"label\"=\"(.+)\" \}$/\1/p' )

if [[ "$KAKAOTALK_COUNT" != "" ]]; then
    KAKAOTALK_LABEL=$KAKAOTALK_COUNT
    ICON="􁋬"
else
    KAKAOTALK_LABEL="0"
    ICON="􀌤"
fi

sketchybar --set "$NAME" icon="$ICON" label="${KAKAOTALK_LABEL}"
