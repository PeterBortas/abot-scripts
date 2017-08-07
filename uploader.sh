#!/bin/bash

source ~/abot-scripts/config.sh

# Make sure the pipeline script has had enough time to create the dir
sleep 1

 ~/ArchiveBot/uploader/uploader.py $HOME/warcs4fos
