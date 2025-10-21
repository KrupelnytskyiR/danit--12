#!/bin/bash


echo -n "Enter filename: "

read filename

if [ -f "$filename" ]; then 
	cat "$filename"
else
	echo "File not exists."
fi
