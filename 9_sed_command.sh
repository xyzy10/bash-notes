#!/usr/bin/env bash


#-----------------------
# sed the stream editor
#-----------------------


#if [[ $1 == '-x' ]]
#then
#	set -x
#fi



#while getopts ":a" opt
#do
#	case $opt in
#		a)
#			echo "-a was triggered!" >&2
#			;;
#		\?)
#			echo "Invalid option: -$OPTARG" >&2
#			;;
#	esac
#done




# Section 1:
# Delete 1st line
#echo -e " 1st line\n 2nd line\n 3rd line\n 4th line\n 5th Line" | sed '1d'


# Delete multi lines
# Delete line from 1st to 4th line
#echo -e " 1st line\n 2nd line\n 3rd line\n 4th line\n 5th Line" | sed '1,4d'



# Overwirte the standard output with -n
# Output the 1st to 3rd line
#echo -e " 1st line\n 2nd line\n 3rd line\n 4th line\n 5th Line" | sed -n '1,3p'



# Section 2:
# Pattern matching

# Only output line that start with a whitespace and follow by 3rd
#echo -e " 1st line\n 2nd line\n 3rd line\n 4th line\n 5th Line" | sed -n '/^\ 3rd/p'

# Search word line and replace with command
# 's/line/command/g' s means substitute. you can also search and replace on a particular line number by
# adding a number infront of s, eg '12s/line/command/g'
echo -e " 1st line\n 2nd line\n 3rd line\n 4th line\n 5th Line" | sed 's/line/command/g'

# To replace a existing file
# use the -i flag
# eg sed -i 's/search_str/replace_str/g' abc.txt



