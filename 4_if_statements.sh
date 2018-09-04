#!/usr/bin/env bash

#-----------------
# use if statement
#-----------------


var=10

# if statement
if [ "$var" != 0 ]
then
	echo "NOT"
else
	echo "YES"
fi

# The let command perform arithmetic operation.
let var=100*10
# it means var2 = 100 * 100 * 100
let var2=100**3
echo "$var $var2"



var1=10

# shot hand if statment
echo $((var2 = var1 < 20 ? 1 : 0))



# The OR || AND && operator
var=10
if [ "$var" -gt 0 ] || ["$var" -eq 10 ]
then    
	echo "One or both are true"
else    
	echo "Neither on of the condition is true"
fi



# Section 2:
# nested if statements
NUM=1

if [ "$NUM" -gt 0 ]
then
	if [ "$NUM" -lt 5 ]
	then
		if [ "$NUM" -gt 3 ]
		then
			echo "GT 0, LT 5, GT 3"
		fi
	fi
elif [ "$NUM" -eq 0 ]
then
	echo "EQ 0"
else
	echo "I Have no idea"
fi


# Section 3:
# Test if a file exist
VAR=./test.txt

if [[ -e $VAR ]]
then
	echo "File exists"
else
	echo "File does not exisits"
fi

# Section 4:
# regular expression, string start with Tue
# we need [[ ]] for it to work, [ is a synonym for 'test'
if [[ $(date) =~ ^Tue ]]
then
	echo "It's Tuesday!"
fi


# Section 5:
# string comparsion
A='abc'
B='def'

if [[ $A == $B ]]
then
	echo "String match"
else
	echo "String does not match"
fi

# STRING1 sorts after STRING2 lexicographically
if [[ $a > $b ]]
then
	echo "a does not come after b"
fi



# Section 6:
# return the exist code, 
# if the result is zero value (FALSE). then the exit code will be 1
# if the result is none zero value (TRUE). then exit code will be 0

#((..))

(( 2 + 3 ))
echo "Exit code is $?"



# Section 7:
NO_OF_ARGUS=2

E_NOARGS=65
E_BADARGS=85
E_UNREADDABLE=84
E_NOFILE=87
E_SIZE=89


if [[ -z "$1" && -z "$2" ]]
then
	echo "No arguments given"
	exit $E_NOARGS
fi

if [[ $# -ne "$NO_OF_ARGUS" ]]
then
	echo "USAGE: $(basename $0) file1 file2"
	exit $E_BADARGS
fi

if [[ ! -e "$1" || ! -e "$2" ]]
then
	echo "Files do not exist"
	exit $E_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then
	echo "Files need to be regular files"
	exit "$E_UNREADDABLE"
elif [[ ! -s "$1" || ! -s "$2" ]]
then
	echo "Files are zero-size"
	exit "$E_SIZE"
fi



cat $1 $2 | sort > file.txt


if [[ $? -eq 0 ]]
then
	echo "Execution of script was successful"
	cat file.txt
else
	echo "Execution of script failed"
fi





