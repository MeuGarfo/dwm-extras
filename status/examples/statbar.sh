#!/bin/sh

# statusbar script for dwm/tmux

# simple status for date, load, and mailcheck.
# example: load: 0.21 mail: 1 Sunday 22/11/2009 00:38:29
# echo load: `uptime | sed 's/.*,//'` mail: `ls $HOME/mail/inbox/new/ | wc -l` `date '+%A %d/%m/%Y %T'` 

# show all load avgs: 0.06 0.08 0.21
# uptime | sed 's/.*://' | sed 's/,//g'                                                                                                                         

# batt info 
# echo `acpi -b | cut -d',' -f2`

# more dates: Sun Nov 22 12:37:42 AM
# date +"%a %b %d %r"


