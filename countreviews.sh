#!/bin/bash

touch sortingfile.txt # creates file
for file in *.dat; # for file with ".dat" extension
do	
	hotel=${file::-4} # variable that gets rid of the last 4 characters (.dat)
	number=$(egrep -c 'Author' "$file") # variable that checks how many "Authors" are present in the file
	printf "$hotel $number \n" >> sortingfile.txt # stores hotel number and number of reviews
done
sort -nrk 2,2 sortingfile.txt # sort items in file from 2nd column (in reverse chronological order)
