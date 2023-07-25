#!/bin/bash

# Set directory
dirtext="/home/pauls/scripts/portfolio/week2/Hide"

#input password and store it as a hash in directory above.
read -p "Enter password : " pword
echo -n $pword | sha256sum > "$dirtext/secret.txt"

