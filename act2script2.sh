#!/bin/bash

read -p "Enter First and Last name:" name
read -p "Enter StudentID:" id

if [ $id = 1234 ]
then
	echo "Welcome $name, welcome to your virtual machine!"

else
	echo "Error, invalid StudentID: $id. Please try again."

fi
