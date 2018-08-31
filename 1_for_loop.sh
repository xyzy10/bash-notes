#!/usr/local/bin/bash

colors="red green blue"

for color in "$colors"
do
	echo "$color, "
done


# init a array
Colors=(red white brown purple)

# find array key with "${!Colors[@]}"
for i in "${!Colors[@]}"
do      
       	echo ${Colors[$i]}
done    
