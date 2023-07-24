#!/bin/bash

# Get directory
read -p "Give me a directory to store files : " dirtext

# Check directory exists or create it 
if [ ! -d "$dirtext" ]; then
	echo "Creating directory : $dirtext "
	mkdir "$dirtext"
fi

#input password and store it as a hash in directory above.
read -p "Enter password : " pword
echo -n $pword | sha256sum > "./$dirtext/secret.txt"

