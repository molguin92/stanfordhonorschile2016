#!/bin/bash
FILES=./twine/*.html
rm -f entries.html
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  filename=$(basename "$f")
  filename="${filename%.*}"
  printf "<p><a href='$f'>$filename</a></p>\n" >> entries.html 
done
