#!/bin/bash

# clear screen
clear

# check password
./passwordCheck.sh

# if return 1 quit or return 0 then run menu
if [ "$?" -eq 1 ]; then
	echo "Goodbye"
	exit 0
else
	while true ; do
		clear
		echo -e "\e[34mMenu"
		echo -e "\e[36m"
		echo "1. Create Folder"
		echo "2. Copy Folder"
		echo "3. Set Password"
		echo "4. Calculator"
		echo "5. Create Multiweeks folders"
		echo "6. Check File Names"
		echo "7. Download a URL file"
		echo "8. Exit"
		echo -e "\e[0m"
		read -p "Please enter a number from selection above: " menuno

		case "$menuno" in

			1) clear
		   	./menu/createfolder.sh
			;;

			2) clear
		   	./foldercopier.sh
			;;

			3) clear
		   	./setPassword.sh
			;;

			4) clear
			./calculator.sh
			;;

			5) clear
			read -p "Enter 2 numbers with space in between: " nos
			./megafoldermaker.sh $nos
			sleep 3
			;;

			6) clear
			./filename.sh filename.txt
			sleep 5
			;;

			7) clear
			./InternetDownloader.sh
			;;

			8) exit 0
			;;

			*) echo "Invalid Value"
			sleep 1
			;;
		esac
	done
fi
