#!/usr/bin/env bash


#------------------------------------------------------------
# Reads the Apache log file and sort is most frequently request URL
#------------------------------------------------------------


if [[ -e $1 ]]
then
cat $1 | cut -d " " -f6,7 | sed "s/\"//" | sort | uniq -c | sort -nr | more
fi
