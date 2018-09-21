#!/usr/bin/env bash


#---------------------------
# How to use case construct
#---------------------------
INPUT=''
SONG="Feel so empty without me"


sing() {
	for i in $SONG; do
		sleep 1
		echo -n ${i}" " 
	done

	sleep 2
}



while [ 1 ]; do
	echo "Type something than 007:"
	read INPUT

	if [ "$INPUT" == "007" ]; then
		exit 0
	elif [ "$INPUT" == 'SING' ]; then
		sing
		exit 0
	fi
	

	case "$INPUT" in
	 ( [[:lower:]] ) 
		 echo "$INPUT is lowercase"
		 echo "$INPUT is also alphabic"
	 ;;
	 ( [[:upper:]] ) echo "$INPUT is uppercase";;
	 ( [0-9] ) echo "$INPUT is a digit";;
	 ( * ) echo "$INPUT is special";;
	esac
done

exit 0

