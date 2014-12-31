#!/usr/bin/env bash

DIRS=`ls`

for DIR in $DIRS
do
    FOLDER=`echo $DIR |  sed 's/-/ /'`

    if [[ $DIR != $FOLDER ]]
    then
        echo "Original DIR: $DIR"
        echo "New Directory: $FOLDER"

        mv "$DIR" "$FOLDER"

    else
        echo "Couldn't detect folder pattern in $DIR, skipping file"
    fi
done

