#!/usr/bin/env bash

colors="red green blue"

for color in "$colors"
do
	echo "$color, "
done


# init a array
Colors=(red white brown purple)

# find array key with "${!Colors[@]}"
for i in "${Colors[@]}"
do      
       	echo $i
done    
