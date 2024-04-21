#!/usr/bin
echo "All cmd line args:$@"
echo "No of cmd line:$#"
echo "Prog name :$0"

echo "username $USER"
echo "Current dir:$PWD"
echo "Home :$HOME"

echo "Hostname :$HOSTNAME"

echo "Pid of current program : $$"
sleep 60 
echo "Last background process:$!"
