#!/bin/bash

source ~/abot-scripts/config.sh

cd ~/ArchiveBot/pipeline
mkdir -p ~/warcs4fos

~/.local/bin/run-pipeline3 pipeline.py --disable-web-server \
        --concurrent $CONCURRENCY $MYPIPELINE 2>&1 | \
    tee "pipeline-$(date -u +"%Y-%m-%dT%H_%M_%SZ").log"
