#!/usr/bin/env bash


#-------------------------
# Random number generator
#-------------------------

# $RANDOM
# Will return a value between 0 to 32767
MAX=10
i=1

while [ "$i" -le "$MAX" ]
do
	n=$RANDOM
	echo $n
	let "i += 1"
	let "j = n / 10000"
	echo "Need to take a nap of $j seconds"
#	sleep $j
done



INPUT=''

while [ "$INPUT" != end ]
do
	echo "type end to stop, else to continou"
	read INPUT
done


until [ "$n" = end ]
do
	echo "Input end to exit agin..."
	read n
done
