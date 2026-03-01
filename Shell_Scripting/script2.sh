#!/bin/bash

# DevOps Practice Script: Demonstrates use of [ ], [[ ]], (( )), and if-elif-else

echo "===== DevOps Access Control Script ====="

# Take inputs
read -p "Enter username: " username
read -p "Enter directory name: " dirname
read -p "Enter file name: " filename
read -p "Enter a number: " number

echo ""
echo "===== Checking conditions... ====="

# Check username using [[ ]] (string comparison)
if [[ "$username" == "admin" ]]
then
    echo "Username check: Admin user"

    # Check number using (( )) (arithmetic comparison)
    if (( number >= 100 ))
    then
        echo "Number check: High privilege number"

    elif (( number >= 50 && number < 100 ))
    then
        echo "Number check: Medium privilege number"

    else
        echo "Number check: Low privilege number"
    fi

else
    echo "Username check: Normal user"
fi

echo ""

# Check directory using [[ ]]
if [[ -d "$dirname" ]]
then
    echo "Directory check: '$dirname' exists"
else
    echo "Directory check: '$dirname' does NOT exist"
    echo "Creating directory..."
    mkdir -p "$dirname"
    echo "Directory created"
fi

echo ""

# Check file using [ ]
if [ -f "$filename" ]
then
    echo "File check: '$filename' exists"
else
    echo "File check: '$filename' does NOT exist"
    echo "Creating file..."
    touch "$filename"
    echo "File created"
fi

echo ""

# Final combined access decision using [[ ]] and (( ))
if [[ "$username" == "admin" ]] && (( number >= 50 )) && [[ -d "$dirname" ]] && [ -f "$filename" ]
then
    echo "FINAL RESULT: ACCESS GRANTED"
else
    echo "FINAL RESULT: ACCESS DENIED"
fi

echo "===== Script Finished ====="
