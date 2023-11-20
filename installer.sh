#!/bin/bash

######################################
#
#AUTHOR      : DEEPAN
#Version     : 1.0.1
#Description : Install.sh for HealthMonitor
#
######################################

repo="https://github.com/Deepanys/RV_HealthMonitor.git"

echo "RVision Verbose logging script For SystemHealth."

#revoking permision
mount -o remount, rw /
#Move
cd /home/
echo "Current Dir $(basename "$PWD")"
#clone the repo
echo "Cloning from $repo"
git clone $repo
chmod +x RV_HealthMonitor

#Move to working dir 
cd RV_HealthMonitor
echo "Current Dir $(basename "$PWD")"
chmod +x SystemHealthLogger.sh

#Move to etc
cd /etc/

echo " Current Dir is $(basename "$PWD")"
if [ "$(basename "$PWD")" == "etc" ]; then
    echo "Current directory is dir_name"
else
    echo "!!!..Current directory Error.."
fi

