# SyncUrFiles

This is a simple back-up script. Designed to back up files on your linux computer.

Linux users who have been using the command line for a while will find this very basic and simplistic, and it is. I hope though, it will help new users, or those people who use Linux daily, but don't really want to get into the command line. With modern distributions, that is possible these days. 

Theses scripts been well documented so as to help anyone new to bash scripting follow the code.

I wrote this for myself, but others may find it useful, thus it went on github.


## What It Does

It backs up directories you choose, to a destination you choose.

It uses a bash command in Linux called "rsync"

This means that this script is a progressive backup i.e. it only backs up the files that have been changed. Thus your first back up takes a bit of time, and subsequent runs are normally shorter as they only back up the changed files.

If you update a file, it will update the old one to the new, if you change the name of a file, it will keep both.

I have it set to ignore any empty directories. So, it won't back up a directory or sub directory that hasn't any content.

If you run it in the command line, you can watch the progress of the back-up. Both the files it is backing up and for the bigger files, the progress of the back-up.

You can run it on the command line, or set it up as a scheduled job either using cron, or if your distribution has a way to set up scheduled tasks, it can be run from there.

## How Do You Use It?

Set it up to suit your purposes (See Instructions file for details). Then either run it as required by opening a terminal and typing `syncurfiles.sh` then you can watch the progress of the backup in the terminal screen, or set it up as a scheduled task to run automatically at a time that suits you.


## Why Write This?

Sure that are some great backup utilities out there for Linux. I wrote this for my own use though. I had been backing up my important directories within my home directory to a seperate drive and was typing in the command in the terminal for each directory. Like so many scripts for Linux, I thought "I am sure I can write a script to do all this for me, to save me the time and effort".

Thus it was written for me, I put it online as I though it may be useful for others, either to do the same thing. or if you wanted a base idea to build something else upon it. 
