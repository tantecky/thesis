#!/bin/bash
for f in *.png; 
  do 
  new=$(echo "$f" | sed "s/png/eps/")
  convert "$f" "$new"
  echo "Done $new"
done

