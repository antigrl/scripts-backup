#!/bin/bash

find -name "*.jpg" | while read filename
do
  newname=${filename/.jpg/A.jpg}

  echo "Original Filename: $filename"
  echo "New Filename: $newname"

  convert "$filename" -resize 240x240 "$newname"

done

find -name "*A.jpg" | while read filename
do
  newname=${filename/A.jpg/B.jpg}

  echo "Original Filename: $filename"
  echo "New Filename: $newname"

  convert "$filename" -resize 160x160 "$newname"

done

find -name "*B.jpg" | while read filename
do
  newname=${filename/B.jpg/C.jpg}

  echo "Original Filename: $filename"
  echo "New Filename: $newname"

  convert "$filename" -resize 80x80 "$newname"

done