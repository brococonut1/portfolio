#!/bin/bash

#input password
echo -e "\e[31m"
read -p "Enter password : " -s pword

# Check password file exists
if [ -f ./Hide/secret.txt ] ; then
	
	# Check password by converting to hash and comparing hash with file ./Hide/secret.txt
	# password checked gives access or password not correct swill not give access. 
	if [[ $(echo -n $pword | sha256sum) = $(cat <./Hide/secret.txt) ]] ; then
		echo 
		echo -e "\e[32mAccess Granted\e[0m"
		sleep 2
		exit 0
	else
		echo 
		echo -e "Access Denied\e[0m"
		exit 1
	fi
fi
