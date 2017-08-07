#!/bin/bash

source ~/abot-scripts/config.sh

cd ~/ArchiveBot/pipeline
mkdir -p ~/warcs4fos
export RSYNC_URL=rsync://fos.textfiles.com/archivebot/
export REDIS_URL=redis://127.0.0.1:16379/0
export FINISHED_WARCS_DIR=$HOME/warcs4fos
export PATH=$PATH:/opt/ateam/bin/

~/.local/bin/run-pipeline3 pipeline.py --disable-web-server \
        --concurrent 2 $MYPIPELINE 2>&1 | \
    tee "pipeline-$(date -u +"%Y-%m-%dT%H_%M_%SZ").log"
