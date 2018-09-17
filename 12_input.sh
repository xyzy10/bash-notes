#!/usr/bin/env bash


#-------------
#   Input
#-------------

# Access the input with $REPLY variable
echo "Some Question"
read
echo "The answer to the question is $REPLY"


# Access the input via a custom variable after the read command
echo "Some other question"
read INPUT
echo "Your answer is $INPUT"



