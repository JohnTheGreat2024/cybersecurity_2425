#!/bin/bash
echo "welcome $USER"
echo "beginning Auto Update Script" $(date +%c)
sudo apt update -y 
sudo apt upgrade -y 
sudo apt autoclean -y 
sudo apt autoremove -y 
echo "Script complete at" $(date +%c)
echo "Please choose an option" 
echo "1, Exit the script" 
echo "2, Shutdown the pi" 
echo "3, Reboot the pi" 
read -p " Enter your Number: " choice 
case $choice in 
	1) 
		echo "Exiting the Script" 
		exit 1 
		;;
	2) 
	    echo "Shutting pi Down" 
		sudo shutdown now 
		;;
	3) 
	    echo "Rebooting the pi"
		sudo reboot 
		;;

esac
