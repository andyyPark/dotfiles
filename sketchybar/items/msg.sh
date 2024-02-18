#!/bin/bash

sketchybar --add item msg right \
           --set msg update_freq=1 \
                 script="$PLUGIN_DIR/msg.sh" 

