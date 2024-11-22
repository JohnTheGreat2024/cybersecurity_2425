#!/bin/bash

#User info

echo "User info"
echo "-user: $USER"
echo "-Date: $(date)"


#Network info 

echo "Network Information" 


echo "Network name:"
iwgetid -r

echo "IP Address"
hostname -I

echo "MAC Address:"
ifconfig | grep -1 'ether' | awk '{print $2}'

echo "Range:"
ifconfig | grep -1 'netmask' | awk '{print $4}'

echo "Gateway:"
netstat -rn | grep '^0.0.0.0' | awk '{print $2}'

echo "Broadcast:" 
ifconfig | grep -1 'broadcast' | awk '{print $6}'
