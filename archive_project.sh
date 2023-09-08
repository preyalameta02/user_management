#!/bin/bash

#Variables

BASE=/mnt/c/Users/preya/OneDrive/Documents/find_command
DAYS=10
DEPTH=1
RUN=0

#check if the directory is present or not

if [ ! -d $BASE ]
then
	echo "directory doesn't exist : $BASE"
	exit 1
fi

#check if arcive folder is present or not in the directory

if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#find the list of files that are greater than 20MB

for i in `find $BASE -maxdepth $DEPTH -type f -size +1M`
do
	if [ $RUN -eq 0 ]
	then
		echo "[$(date "+%Y-%m-%d %h:%M:%S")] archiving $i ==> $BASE/archive"

		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done
