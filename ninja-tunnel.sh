#!/bin/bash

source ~/abot-scripts/config.sh

if [ $MYUSER = "YOUR-USERNAME-GOES-HERE" ]; do
    echo "No account, so not starting tunnel yet"
    sleep 3600
    exit 1
fi
    
MYUSER=zino
autossh -C -L 127.0.0.1:16379:127.0.0.1:6379 \
	$MYUSER@archivebot.at.ninjawedding.org -N
