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
	clear
	echo "Menu"
	echo
	echo "1.Create Folder"
	echo "2.Copy Folder"
	echo "3.Change Password"
	echo "Else Exit"
	echo
	read -p "Please enter a number from selection above :" menuno

	case "$menuno" in
		1) clear
		   ./menu/createfolder.sh
		;;
		2) clear
		   ./menu/copyfolder.sh
		;;
		3) clear
		   ./menu/changepassword.sh
		;;
		*) exit 0
	esac
fi
