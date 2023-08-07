#!/bin/bash

# run the ipinfo script and parse out the ip address lines using sed

./ipinfo.sh | sed -n '/IP /p'

