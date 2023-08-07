#!/bin/bash

# Range of values
minNo=1
maxNo=100
# Correct value
CorrectNo=42

#This function prints a given error

printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}


#This function will get a value between the 2nd and 3rd arguments

getNumber()
{
    read -p "$1: "

    while (( $REPLY < $2 || $REPLY > $3 )); do

        printError "Input must be between $2 and $3"

        read -p "$1: "

    done

}

# This function checks values in range and prints high or low

notNumber () 
{
	if [[ ( $1 -gt $2 ) && ( $1 -lt $3 ) && ( $1 -ne $4 ) ]]; then
		echo $5
	fi
}

# this is the start of the script

getNumber "please type a number between $minNo and $maxNo" $minNo $maxNo

# While checks answer is correct

while [[ $REPLY -ne $CorrectNo ]]; do

    # runs notNumber function to check Too High

	notNumber $REPLY $CorrectNo $maxNo $maxNo "Too High!"

    # runs notNumber function to check Too Low 

	notNumber $REPLY $minNo $CorrectNo $minNo "Too Low!"

    getNumber "please type a number between $minNo and $maxNo" $minNo $maxNo

done
echo "Correct Number"

