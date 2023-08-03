#!/bin/bash

for (( ; ; )) ; do

	read -p "Please enter URL to download or exit to quit: " webpage
	echo
	if [ "$webpage" = "exit" ] ; then
		exit 0
	fi
	read -p "Where do you want to save the file: " saveloc
	echo
	wget -P "$saveloc" "$webpage" 

done

