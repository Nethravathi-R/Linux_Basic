#!/bin/bash
echo "Enter the filename"
read file
while read line
do
	echo $line
	echo "Hii"
done < $file
