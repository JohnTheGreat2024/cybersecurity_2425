#!/bin/bash 


#./lohremove.sh file2.tct
removelog=touch /home/pi/Desktop/removed.log
if [ "$#" -eq 0 ]; then 
         echo "$0: Please enter a list of files oor directories to delete"
         exit 1 
f1

#./logremove.sh -s file1 
if [ $1 = "-$" ] ; then 
	    shift
#./logremove file1
f1 

echo "filename, user variable, date" >> revomelog
for FILE in "$0"; do 
	if [ -0 "SFILE" ];then 
		# Log the removal 
		if [$SILENT -eq 0 ]; then 
			echo "$(date): User $(whoami) revomed $FILE" >> "SLOG_FILE"
			f1
