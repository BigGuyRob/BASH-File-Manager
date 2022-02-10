#!/bin/sh
if [ $# = 0 ]; then
	echo "No args"
	exit 1
fi

touch tempFile.txt #gotta create a temporary file for the intermediate results
cat /dev/null > tempFile.txt #make sure its empty if was already there
count=1
for tot in "$@" #for all input arguments
do
	if [ -f "$tot" ]; then #check if it is a file first
		echo "arg is a file"
		echo "Checking file $count"
		numLines=$(wc -l < "$tot") #Instead store the numLines (status returned from wc -l) here
		echo "There are $numLines lines in $tot"
		cat "$tot" >> tempFile.txt #append the end of tempFile with the current file
		echo "Added lines from $tot to tempFile.txt"
		echo "Contents after adding $count files"
		cat -n tempFile.txt
		count=$((count+1))
	else
		echo "arg is not a file"
	fi
done
finalCount=$((count-1))
echo "Final contents of concatenated file after $finalCount appended files"
cat -n tempFile.txt
