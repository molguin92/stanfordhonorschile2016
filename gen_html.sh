#!/bin/bash
FILES=./twine/*.html
rm -f entries.html
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  printf "<a href='$f'>$f</a>\n" >> entries.html 
done