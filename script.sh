#!/bin/bash

str=$1

# Create folders
mkdir -p foo/dummy
mkdir -p foo/empty

# Create empty file
touch foo/empty/file2.txt

# Create non-empty file
if [ $# -eq 0 ]; then
	echo "Que me gusta la bash!!" | tee foo/dummy/file1.txt
else
	echo $str | tee foo/dummy/file1.txt
fi
