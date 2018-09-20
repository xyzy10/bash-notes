#!/usr/bin/env bash


#----------------------------------------
# How to Use break and continue in loops
#----------------------------------------

# Loop 1
for i in A B C; do
	echo "$i"

	# Loop 2
	for j in a b c; do
		echo -e "  $j"

		# Loop 3
		for k in 1 2 3 4 5 6; do
			echo -e "    $k"

			if [ "$k" -eq 2 ]; then
				echo "    Skipped"
				# Continue 1 means skipped the current index in current loop.
				# Continue 2 means skipped the current loop entirely.
				# Continue 3 means skipped the current loop and the immediate parent loop entirely.
				continue 2
			fi
		done

	done

done

