#!/usr/bin/env bash


#----------------------
# Return values Part 1
#----------------------

# $? holds the exist code of the last command that was executed in a function
# No error error code should be 0
echo "hi"
echo $?

# This should return error 127
#echo 
#ee eeefe ee
#echo $?



NO_OF_ARGUS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGUS" ]
then
	# the basename command strips the directory path from the filename, so when
	# the scripted executed from different directory then where you are calling it
	# will not output the path
	echo "Usage: `basename $0` testFile1 testFile2"
	exit $EBADARGS
fi

# -r return true if the argument $1 file exist and readable
if [[ ! -r "$1" || ! -r "$2" ]]
then
	echo "Files are not readable"
	exit "$E_UNREADABLE"
fi

# cmp command compares files 1 byte at a time
# return 0 if files are the same, 1 if them are different
# /dev/null == black whole :D
cmp $1 $2 &> /dev/null

# if exist code is normal
if [ $? -eq 0 ]
then
	echo "Files are the same"
else
	echo "Files are different"
fi

exit 0
