#!/bin/bash


# Find content on downloaded file
if [ $# -eq 0 ]; then
	echo "Please input an argument"
else
	# Download page
	wget -q --no-check-certificate --content-disposition https://raw.githubusercontent.com/Lemoncode/bootcamp-devops-lemoncode/master/00-fundamentos-linux/exercises/README.md -O readme.md

	grep -n $1 readme.md | cut -f1 -d:
fi
