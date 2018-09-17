#!/usr/bin/env bash


#---------------------------
# Trouble shooting commands
#---------------------------

# Print all executed commands
#set -x #enable it
#set +x #disable it


# Pipe exist status
# When we pipe result down the line for further process
# we can use the PIPESTATUS[*] buildin variable to find out the exit code for each command
cat abc.txt | sort
echo "The last exist codes for last command  were:" ${PIPESTATUS[*]}


# The line number
# The buildin line number variable will display the current line number
echo "The current line number is" $LINENO
