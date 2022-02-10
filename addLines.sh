#!/bin/sh
for x in 1 2 3 4 5
do
	for c in 1 2 3
	do
		touch "file$x.txt"
		echo "File$x Line$c" >> "file$x.txt"
	done
done

