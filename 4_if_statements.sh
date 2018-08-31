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



# The OR || AND && operator
var=10
if [ "$var" -gt 0 ] || ["$var" -eq 10 ]
then    
	echo "One or both are true"
else    
	echo "Neither on of the condition is true"
fi



