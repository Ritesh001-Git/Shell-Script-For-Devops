#!/bin/bash

: << 'COMMENT'
Your challenge (Master-level task)
Create script that:
asks username
asks directory name
asks number
Conditions:
if username == admin
AND directory exists
AND number > 50
Print:
Access granted
Else:
Access denied
COMMENT

read -p "Enter Username: " name
read -p "Enter directory name: " dir
read -p "Enter your number: " n

if [[ "$name" == "admin" ]] && (( n > 50)) && [[ -d "$dir" ]]
then
echo "Access Granted"
else
echo "Access not granted"
fi



