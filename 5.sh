#!/usr/local/bin/bash

Colors=(red white brown purple)

for i in "${!Colors[@]}"
do
	echo ${Colors[$i]}
done
