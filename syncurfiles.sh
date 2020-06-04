#!/bin/bash

# Variables Notation
# DRIVE = The place you will be syncing to
# HOMEDIR = Your base directory that contain (is the base navigation point for) the directories to be bcked up
# DIRSTOSYNC = Variable list for the directies to be backed up
# DIR = The individual variable, taken from the variable list to be processed

# Where are you backing up to?
# Start with a / DO NOT end with a /
# No Quotes, no spaces e.g. DRIVE=/media/paul/MyBackupDrive/BackUps
DRIVE=/media/paul/MyBackupDrive/BackUps

# What is the absolute path of your base directory?
# Only if it is NOT the normal 'home' directory, if it is your home directory - then don't touch it.
# Start with a / DO NOT end with a /
# No Quotes, no spaces e.g. HOMEDIR=/home/secure
HOMEDIR=$HOME

# Which folders in your home directory are you backing up?
DIRSTOSYNC="Documents Music Videos Pictures"

# Now do all the sync / Backup stuff for each of the source directories
for DIR in $DIRSTOSYNC
do
 rsync -avhmP ${HOMEDIR}/${DIR} ${DRIVE}
done