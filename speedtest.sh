#!/bin/bash 

echo "beginning speedtest" 

LOG_FILE="/home/pi/Desktop/speedtest.log"

OUTPUT=$(speedtest-cli --simple) 


SERVER=$(echo "$OUTPUT" | grep 'Hosted by' | awk '{print substr($0, index($0,$3))}')
DOWNLOAD=$(echo "$OUTPUT" | grep 'Download' | awk '{print $2}' | tr -d 'Mbits/s')
UPLOAD= $(echo "$OUTPUT" | grep 'Upload' | awk '{print $2}' | tr -d 'Mbits/s') 

{ 
	echo "Date: $(date)"
	echo "server: $SERVER" 
	echo "Download speed: $DOWNLOAD Mbits/s"
	echo "Upload speed: $UPLOAD Mbits/s"
} >> "$LOG_FILE"


if (( $(echo "$DOWNLOAD < 40" | bc -l) )); then 
	echo "your speed sucks" 
else 
	echo "wow great speed" 
fi 

cat "$LOG_FILE"

