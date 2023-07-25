#!/bin/bash

read -p "What directory would you like to make ? :" dirname

if [ -d "$dirname" ];
then
	echo "$dirname already exists"
else
	mkdir "$dirname"
	echo "Creating directory $dirname"
fi

