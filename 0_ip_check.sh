#!/usr/bin/env bash

#----------
# ip check
#----------

ip=$(hostname -I)

function check_ip() {
	echo $ip;

	if ! [ -n "$ip" ]
	then
		echo "ipAddress is not setup" &&
		exit 1
	fi
}

function main() {
	echo -e "\n###### Process Start ######\n"
	check_ip
}

main
