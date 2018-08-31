#!/usr/local/bin/bash


#--------------------------------
# Variables and Parameters Part2
#--------------------------------

MIN=10

if [ -n "$1" ]
then
	echo "1st one is $1"
fi

if [ -n "$2" ]
then    
       	echo "2nd one is $2"
fi

if [ -n "$3" ]
then    
	echo "3rd one is $3"
fi 

if [ -n "$4" ]
then    
	echo "4th one is $4"
fi      

if [ -n "$5" ]
then     
        echo "5th one is $5"
fi

if [ -n "$6" ]
then
	echo "6th one is $6"
fi

if [ -n "$7" ]
then    
	echo "7th one is $7"
fi      

if [ -n "$8" ]
then     
	echo "8th one is $8"
fi

if [ -n "$9" ]
then
	echo "9th one is $9"
fi  

# after the 10th argument, it needs to be representive with {}
if [ -n "${10}" ]
then
	echo "10th one is ${10}"
fi  

# $* outputs all the arugments
echo "List of arguments: "$*""

# $0 outputs the name of script
echo "Name of Script; \""$0"\""

# $# outputs total number of arguments
if [ $# -lt "$MIN" ]
then
	echo "Not enough arguments, need 10 to run"
fi





