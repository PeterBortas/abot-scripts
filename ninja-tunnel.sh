#!/bin/bash

source ~/abot-scripts/config.sh

autossh -C -L 127.0.0.1:16379:127.0.0.1:6379 \
	$MYUSER@archivebot.at.ninjawedding.org -N
