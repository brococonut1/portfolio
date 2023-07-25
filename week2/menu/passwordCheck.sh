#!/bin/bash

#input password
read -p "Enter password : " -s pword

# Check password file exists
if [ -f ~/portfolio/week2/Hide/secret.txt ] ; then
	
	# Check password by converting to hash and comparing hash with file ./Hide/secret.txt
	# password checked gives access or password not correct swill not give access. 
	if [[ $(echo -n $pword | sha256sum) = $(cat <./Hide/secret.txt) ]] ; then
		echo 
		echo "Access Granted"
		exit 0
	else
		echo 
		echo "Access Denied"
		exit 1
	fi
fi
