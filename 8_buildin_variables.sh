#!/usr/bin/env bash


#-------------------
# Buildin Variables
#-------------------

# $$ 
# gives current process id of the script
echo "$$"


# $BASH_VERSION
# current bash shell version
echo "$BASH_VERSION"


# var: $BASH_VERSINFO 
# an array that holds the details of current bash version
for n in {0..5}
do
	echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done



# var: $UID
# The current user id
ROOT_UID=0

echo -n "You are: "

if [[ $UID -eq $ROOT_UID ]]
then
	echo "root. Your \$UID = $UID"
else
	echo "user. Your \$UID = $UID"
fi

# var: $GROUPS
# The group id for the current user belongs to
echo $GROUPS

# The GROUPS array also holds the listing of group ids for current user
echo $GROUPS[0]
echo $GROUPS[1]


# var: $FUNCNAME
# This variable stores the function name within the local scope
# Therefore when calling it outside the function, it return nothing
someFunction()
{
	echo "Function name is $FUNCNAME"
}

someFunction

# should return nothing
echo "Outside, \$FUNCNAME = $FUNCNAME"



# var: $HOME
# the current user home directory
echo "$HOME"



# var: $HOSTNAME
echo "$HOSTNAME"


if [[ $HOSTNAME && $USER && $HOME ]]
then
	echo "HOSTNAME: $HOSTNAME"
	echo "USER: $USER"
	echo "HOME: $HOME"
fi


# var: $MACHTYPE
# Identifies the system hardware
echo "$MACHTYPE"


# var: $PWD
# store the current directory


# var: $OLDPWD
# store the preview directory


# var: $REPLY
# store the input for last read command
echo "How's your day?"
read
echo "you said $REPLY"


# var: $SECONDS
# The number of seconds the current script has been running
LIMIT_TIME=18
TIME_INTERVAL=3


echo "This script will run for $LIMIT_TIME seconds."
echo "Press Ctrl-c to exit before the time limit."

while [ "$SECONDS" -le "$LIMIT_TIME" ]
do
	echo "This script has been running for $SECONDS seconds"
	sleep $TIME_INTERVAL
done    
