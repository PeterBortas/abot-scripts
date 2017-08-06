#!/bin/bash

# Ghetto init script for non-previlegied user:
# Set up cron job that will check that the archivebot tmux exists every 10min.

# Verify that things have been properly configured before we start
source ~/abot-scripts/config.sh

echo "Making initial connection to archivebot controller to make sure hostkey is cached..."
ssh $MYUSER@archivebot.at.ninjawedding.org true

if crontab -l | grep -n cron-start-abot.sh; then
    echo "Cron line already exists. Edit it manually if needed:"
    crontab -l | grep cron-start-abot.sh
else
    echo -n "Installing cron line... "
    
    (crontab -l 2>/dev/null; \
     echo "*/10 * * * * $HOME/abot-scripts/cron-start-abot.sh") \
	| crontab -

    echo "New crontab:"
    crontab -l
fi
