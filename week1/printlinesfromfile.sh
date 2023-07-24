#!/bin/bash

file="test.txt"
lineno=0

while read -r line; do
	lineno=$((lineno + 1))
    echo -e "Line $lineno : $line"
done <$file 

