#!/bin/bash

read -p "Enter a number of direcrory to create: " dir

for(( i=1; i<=dir; i++ ))
do 
	mkdir "dir$i"
	echo "dir$i created"
done


