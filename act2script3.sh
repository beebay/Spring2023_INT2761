#!/bin/bash

read -p "Enter Name: " name

current_time=$(date +%H)

if [ $current_time -lt 12 ]
then
	echo "Good morning, $name!"

elif [ $current_time -lt 17 ]
then
	echo "Good afternoon, $name!"
else
	echo "Good evening, $name!"
fi
