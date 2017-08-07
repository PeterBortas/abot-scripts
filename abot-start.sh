#!/bin/bash

# This makes sure configuration is complete before we start a headless tmux
source ~/abot-scripts/config.sh

tmux new -s archivebot \
    set -g set-remain-on-exit on \; \
    new-session '~/abot-scripts/ninja-tunnel.sh; bash' \; \
    split-window '~/abot-scripts/pipeline.sh; bash' \; \
    detach-client
