#!/bin/bash

lineno=0

if [ ! -f "$1" ] ; then
	echo "file does not exist"
	exit 1
fi
	
while read -r line; do
	if [ "$line" == "" ] ; then
		echo
	elif [ -d $line ] ; then
		echo "$line : That's a directory"
	elif [ -f $line ] ; then
		echo "$line : That file exists"
	else
		echo "$line : Don't know what that is!"
	fi
done <$1

