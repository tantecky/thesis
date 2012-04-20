#!/bin/bash
for file in $(find `pwd` -iname *.png -o -iname *.jpg); 
  do 
    if [ "$file" -nt "${file%.*}.eps" ]
    then
        convert "$file" "${file%.*}.eps"
        echo "Done $file"
    fi
done