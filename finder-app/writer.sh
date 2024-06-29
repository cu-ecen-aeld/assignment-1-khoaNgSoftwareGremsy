#!/bin/bash 

argc=$#
if [ $argc -ne 2 ]; then 
    echo "Numner of arguments is invalid"
    exit 1
fi

writefile=$1
writestr=$2

directory=$(dirname "${writefile}")
if [ ! -d ${directory} ];then 
    mkdir -p ${directory}
fi

echo "${writestr}" >| ${writefile}

if [ "$?" -ne 0 ]; then 
    echo "Can not write ${writestr} to ${writefile}"
    exit 1
fi
