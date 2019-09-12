#!/bin/bash
#MAKE SURE YOU RUN THE SCRIPT WITH . ./name of script BOTH DOTS ARE NEEDED FOR PROPER CHANGING OF DIRECTORIES
clear
exec 3<>/dev/tcp/localhost/22 #opens Read Write socket on port 22 
change=$(ps -ef | grep -v grep | grep ssh | grep accepted | awk '{print $2}') # sets a var change to a command that gets the PID of the Socket 

cd "/proc/$change/fd" #changes to the sockets FD folder
ls -al  
echo ""
stat "%a" 5 #gets octal permissions 

