# abot-scripts
Setup scripts for ArchiveBot pipeline

# Installation

## Set up the pipeline
Follow steps 1-3 of https://github.com/ArchiveTeam/ArchiveBot/blob/master/INSTALL.pipeline, but replace step 4 with installing these scripts.

## Setup
1. Clone this repo to $HOME of the archivebot user
2. Configure your account details in abot-scripts/config.sh
3. Run abot-scipts/setup.sh

This installs a cron script that checks that there is a tmux with the
session name "archivebot" every even 10 minutes. Thus making sure that
it will autostart after restarting the machine running it. If you
don't want to wait for cron to start it for you this first time then
just run abot-scripts/cron-start-abot.sh manually.

The tmux will be started in the background. To attach to it run "tmux a".

