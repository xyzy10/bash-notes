#!/usr/bin/env bash


#--------------------------
# Variables and Parameters
#--------------------------

# Section 1:
# unassign varaible 
var=10
unset var
echo $var

var1=4
# assign variable does not need to add $ infront of it 
(( var2=var1<10?1:0 ))
echo $var2



# Section 2:
# read stdin as variable
var1=4
echo "type in some value"
read var2
echo $var2



# Section 3: 
# value from loop
for var in 1 2 3 
do
	echo $var
done



# Section 4:
# use "" sign to preserve white space from varaible
var="This   is   Spartaaaaaaaaa, where is my white      spaceeeesssss?"
echo $var
echo "$var"



# Section 5:
# multiple variables in single line
var1=11 var2=22 var3=33
echo "$var1 $var2 $var3"



# Section 6:
# assign and reassign variable
var=
echo "$var"
var=9
echo "$var"
var=10
echo "$var"
unset var
echo "$var"



# Section 7:
# when var is null, it will treat it as 0
# var= or var='' all set it to null
var=
let "var += 10"
echo "$var"
let "var = var + 10"
echo "$var"



# Section 8:
# use `` or $() sign for command substitution
# syntax $() is recommended
# output value will be injected into home_dir varaible after execution finished in a sub shell
home_dir=`ls ~/`
echo "$home_dir"

# This will not work, since (ls -la) is executed in a sub shell
hi=(ls -la)
echo "$hi"

# by add $ infront we will convert to result to a varaible
# hi=$() means that output value of this sub shell is referenced and injected into the varaible hi
hi=$(ls -la)
echo "$hi"



# Section 9:
# Substitution
# use / sign inside the ${} to replace value 
# output will be 1000BCD since ABC was replaced by BCD
num=1000ABC
var=${num/ABC/BCD}
echo "$var"



# Section 10:
# string and interger opertion
# bash set string value to 0, so the following command will output 1 instead of A01
var=A0
let "var+=1"
echo "$var"


