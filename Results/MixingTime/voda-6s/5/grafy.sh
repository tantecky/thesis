#!/bin/bash
echo "set terminal pngcairo enhanced size 800,600 font \"Arial Bold, 12\"
set output \"grafy.png\"
set xrange [0 : 10]
set yrange [0 : *]
#set ytics 0.2
#set xtics 0.5
set mxtics 3
set mytics 3
set ylabel \"{/Symbol s}\"
set xlabel \"t (s)\"
set format x \"{/Arial=12} %1.1f\"
set format y \"{/Arial=12} %1.1f\"" > "./grafy.gnuplot"

echo "plot \\" >> "./grafy.gnuplot"

for f in pd*; 
  do 
  echo "'$f' using 1:2 with lines title \"$f\",\\" >> "./grafy.gnuplot"
done

lajna="$(cat ./grafy.gnuplot | wc -l)"
cat "./grafy.gnuplot" | sed -i "$lajna s/,\\\//" "./grafy.gnuplot" &&
gnuplot "./grafy.gnuplot" &&
eog "grafy.png"

