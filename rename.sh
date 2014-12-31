#!/bin/bash

find -name "*.jpg" | while read filename
do
  newname=${filename/.jpg/A.jpg}

  echo "Original Filename: $filename"
  echo "New Filename: $newname"

  convert "$filename" -resize 240x240 "$newname"

done