#!/bin/bash

read -p "What directory week would you like to add (A Number)? :" weekno

weekdir=week"$weekno"

if [ -d "$weekdir" ];
then
	echo "$weekdir already exists"
else
	mkdir "$weekdir"
	echo "Creating directory $weekdir"
fi

