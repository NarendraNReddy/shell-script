#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIRECTORY="/tmp/app-logs"

if [ -d $SOURCE_DIRECTORY ];
then 
    echo -e "$G Dir:$SOURCE_DIRECTORY exists $N\n"
else 
    echo -e "$R No dir:$SOURCE_DIRECTORY exists $N\n"   
fi

FILES=$(find . -name "*.log" -mtime +14)

echo FILES