#!/bin/bash

# This makes sure configuration is complete before we start a headless tmux
source ~/abot-scripts/config.sh

tmux new -s archivebot \
    new-session '~/abot-scripts/ninja-tunnel.sh' \; \
    split-window '~/abot-scripts/pipeline.sh' \; \
    detach-client
