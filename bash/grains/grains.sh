#! /bin/bash

# This option will make the script exit when there is an error
set -o errexit
# This option will make the script exit when it tries to use an unset variable
set -o nounset

input=$1

if [ $input -gt 64 -o $input -le 0  ]; then
    echo "Error: invalid input"
    exit 1 
else
    awk "BEGIN {print 2**($input-1)}"
fi
