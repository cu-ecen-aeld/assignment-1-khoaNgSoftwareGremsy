#!/bin/bash 

argc=$#
if [ "$argc" -ne 2 ]; then 
    echo "Number of argument is invalid!!!!"
    exit 1
fi

filesdir=$1
cd $filesdir
total_file=$(ls | wc -l)
searchstr=$2 
match_file=$(grep -r "${searchstr} *" | wc -l)

echo "The number of files are ${total_file} and the number of matching lines are ${match_file}" 


