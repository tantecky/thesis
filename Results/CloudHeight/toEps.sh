#!/bin/bash
for f in *.png; 
  do 
  new=$(echo "$f" | sed "s/png/eps/")
  convert "$f" "$new"
  echo "Done $new"
done

for f in *.jpg; 
  do 
  new=$(echo "$f" | sed "s/jpg/eps/")
  convert "$f" "$new"
  echo "Done $new"
done
