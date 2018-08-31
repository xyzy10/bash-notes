#!/usr/local/bin/bash

# ------------------------
# Special characters \ ` :
# ------------------------

# Section 1:
# use \ to escape special characters
echo "\"Linux is awesome!\""

# print ls man page and grab -U command help text
man ls | grep -C 3 "\-U"



# Section 2:
# use ` to assign standard output to a varaible
let val=500/2

val2=`echo $val`

echo "val2 value is $val2"



# Section 3:
# use : to do Nothing, (the Null command) :D
# if var is less than 15 then do Nothing 
var=10

if [ "$var" -lt 15 ]
then :
else
	echo $var
fi


# use : to empty a file

# 1 create a file
touch cat.txt

# 2 fill it with text
echo "Moew Moew Moew" > cat.txt

# 3 fill with out text
echo "mooooo" >> cat.txt

# 4 show we have content
cat cat.txt

# 5 empty it with Null command(the : sign)
: > cat.txt

# 6 show we have no more content
cat cat.txt

# 7 clean it up
rm cat.txt
