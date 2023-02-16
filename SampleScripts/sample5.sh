#!/bin/bash

#prompt the user to enter a number between 1-3
read -p "Enter a number between 1 and 3: " num

#Use a case condition/statement to execute tasks based on the number provided 
case $num in 
	1) 
		echo "You entered 1."
		;;
	2)
		echo "You entered 2."
		;;
	3)
		echo "You entered 3."
		;;
	*) 
		echo "Invalid input - please try again, only numbers between 1 and 3 are allowed."
		;;
esac
