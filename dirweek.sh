#!/bin/bash

read -p "Which week is it:" weekno

weekdir=week"$weekno"

if [ -d "$weekdir" ];
then
	echo "$weekdir already exists"
else
	mkdir "$weekdir"
	echo "Creating directory $weekdir"
fi

