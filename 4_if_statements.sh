#!/usr/local/bin/bash

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


