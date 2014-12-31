#!/usr/bin/env bash

FILES=`ls`

for FILE in $FILES
do
    DIR=`echo $FILE | sed 's/^\([0-9]\{2\}-[0-9]\{5\}\).*/\1/'`

    if [[ $FILE != $DIR ]]
    then
        echo "Original File: $FILE"
        echo "New Directory: $DIR"

        mkdir -p $DIR

        mv $FILE $DIR/
    else
        echo "Couldn't detect folder pattern in $FILE, skipping file"
    fi
done