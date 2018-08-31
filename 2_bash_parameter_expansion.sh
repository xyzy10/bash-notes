#!/usr/local/bin/bash

# ------------------------
# bash parameter expansion examples
# ------------------------


# Section 1:
# set a default value for argument1, if not supplied via bash then this value will be used
_jail_dir="${1:-/home/phpcgi}"
echo "Setting php-cgi at ${_jail_dir}..."



# Section 2:
# substitu content is var to print function, resulting one word per line
var="my content is great"
printf "%s\n" ${var}



# Section 3:
# convert all content in var to lowercase
var="ABcDefg"
echo ${var,,}

# convert only first charact in var to lowercase
echo ${var,}

# convert all content in var to uppsercase
echo ${var^^}

# convert only first charact in var to uppercase
echo ${var^}
