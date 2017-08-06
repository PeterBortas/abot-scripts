#!/bin/bash

if tmux ls | grep -s archivebot; then
    echo "archivebot tmux already started."
else
    echo "No archivebot tmux found. Starting new."
    ~/abot-scripts/abot-start.sh
fi
