#!/bin/bash

for (( ; ; ))
do
	clear
	echo -e "\e[30;107mMy Bash Calculator\e[0m"
	echo
	echo -e "\e[34m1. Addition\e[0m"
	echo -e "\e[32m2. Subtraction\e[0m"
	echo -e "\e[31m3. Multiplication\e[0m"
	echo -e "\e[35m4. Division\e[0m"
	echo "0. Exit program"
	echo
	read -p "Select a operator or exit: " operator

	 case $operator in

		1) clear
		echo -e "\e[34mAddition"
		read -p "Input first number to add :" number1
		read -p "input second number to add :" number2
		echo 
		AddNo=$(bc <<< "$number1 + $number2")
		echo -e "$number1 + $number2 = $AddNo\e[0m" 
		sleep 5
		;;

		2) clear
		echo -e "\e[32mSubraction"
		read -p "Input first value to be subtracted from: " number1
		read -p "Input value to subtract: " number2
		echo
		SubNo=$(bc <<< "$number1 - $number2")
		echo -e "$number1 - $number2 = $SubNo\e[0m"
		sleep 5
		;;

		3) clear
		echo -e "\e[31mMultiplication"
		read -p "Input number to multiply: " number1
		read -p "Input other number to multiply: " number2
		echo
		MultiplyNo=$(echo "$number1 * $number2" | bc -l)
		echo -e "$number1 x $number2 = $MultiplyNo"
		sleep 5
		;;

		4) clear
		echo -e "\e[35mDivision"
		read -p "Input number to be divided: " number1
		read -p "Input number to divide by: " number2
		echo
		DivisionNo=$(echo "$number1 / $number2" |bc -l)
		echo -e "$number1 / $number2 = $DivisionNo"
		sleep 5
		;;

		0) echo
		echo "Exiting Program"
		echo "Goodbye"
		exit 0
		;;

		*) echo "Not a valid number"
		sleep 2
		;;
	esac
done
