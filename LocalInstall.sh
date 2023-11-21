#!/bin/bash

######################################
#
#AUTHOR      : DEEPAN
#Version     : 1.0.1
#Description : Install.sh for HealthMonitor
#
######################################


echo "RVision Verbose logging script For SystemHealth."

#revoking permision
mount -o remount, rw /
#Move


cp SystemHealthLogger.sh /etc/

echo "Moving script to /etc/"

#Move to etc
cd /etc/

echo "Working in Dir $(basename "$PWD")"

if [ "$(basename "$PWD")" == "etc" ]
then
    echo "Starting installation.."
    
    if [ -f "/etc/SystemHealthLogger.sh" ]
	then
    	echo "Action script Found"
    	chmod +x SystemHealthLogger.sh
    	echo "bash /etc/SystemHealthLogger.sh&">>/etc/startup.sh
    	
	else
    	echo "Cloning Error"
    	exit 1 "Download Error!!!"
    	
	fi
    echo ""
    echo "Please REBOOT the Device to Complete installition"
    exit 0
else
    echo "!!!..Move directory Error.."
fi





#cd /home/
#echo "Current Dir $(basename "$PWD")"
#clone the repo
#git clone $repo
#chmod +x RV_HealthMonitor

#Move to working dir 
#cd RV_HealthMonitor
#echo "Current Dir $(basename "$PWD")"
#chmod +x SystemHealthLogger.sh


