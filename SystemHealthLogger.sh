#!/bin/bash

######################################
#
#AUTHOR      : DEEPAN
#Version     : 1.0.1
#Description : Script to enable SystemHealth logging
#
######################################

echo "SystemHealth logging script."
#revoking permision
mount -o remount, rw /
#creating Datalog folder
dir="/home/SystemHealthLog"

FileName=$(date +'SysCharlog_%Y:%m:%d:%T.log')

#Creating File using Date stamp 
touch /home/TempCpuLogs/$FileName

if [ -d $dir ]
then
    echo "Directory $dir exists. Moving forward :>"

else
    echo "Directory does not exist. Creating Directory"
    mkdir $dir
    if [ -d $dir ]
    then
        echo "Directory $dir Created Successfully:>"

    else
        echo "Oops :: Failed to create  Directory . terminating bash..!!!"
        exit "File system error"
    fi
fi

echo "SysLog Started"


echo "                        |----SOC----|----PMIC----|----ARMFRQ----| ">$dir/$FileName
while true
do
    echo "$(date +'%Y:%m:%d:%T') :: $(vcgencmd measure_temp) | $(vcgencmd measure_temp pmic) | $(vcgencmd measure_clock arm) ">>/home/TempCpuLogs/$FileName
    sleep 60
done



exit "Script Execution Completed.."

