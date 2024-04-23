#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script ,course:$COURSE"
echo "The PID of the current shell:$$"

./16-other-script.sh 
#source ./16-other-script.sh

echo "After calling other script,course:$COURSE"