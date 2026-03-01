#!/bin/bash

function check_disk_usage(){
usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
echo "Current disk usage $usage%"

if (( usage < 70 ))
then
echo "Ok"
else
echo "Warning"
fi
}
check_disk_usage
