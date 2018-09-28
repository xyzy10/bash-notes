#!/usr/bin/env bash


#---------------------------------
# How to use the select construct
#---------------------------------

# PS stands for prompt statement
PS3='Pick a color: '

COLORS=("red" "green" "blue")

select COLOR in ${COLORS[@]}; do
	echo "You selected: $COLOR"
	break
done

