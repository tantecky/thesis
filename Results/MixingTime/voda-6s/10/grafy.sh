#!/bin/bash
echo "set terminal pngcairo enhanced size 800,600 font \"Arial Bold, 12\"
set output \"grafy.png\"
set xrange [0 : 10]
set yrange [0 : *]
#set ytics 0.2
set xtics 1.0
set mxtics 3
set mytics 3
set ylabel \"c^{*}\"
set xlabel \"t (s)\"
set format x \"{/Arial=12} %1.1f\"
set format y \"{/Arial=12} %1.1f\"" > "./grafy.gnuplot"

echo "plot \\" >> "./grafy.gnuplot"

echo "'cfd.probe' using (\$1-7.521):(\$2 / 6.25e-5) with lines title \"{/Arial=12}simulace\" lw 2.0 ,\\" >> "./grafy.gnuplot"

for f in pd*; 
  do 
  echo "'$f' using 1:2 with lines notitle ls 7,\\" >> "./grafy.gnuplot"
done

sed -i "0,/notitle/s/notitle/title \"\{\/Arial=12\}experiment\"/" "./grafy.gnuplot"   # change only the first match
lajna="$(cat ./grafy.gnuplot | wc -l)"
cat "./grafy.gnuplot" | sed -i "$lajna s/,\\\//" "./grafy.gnuplot" && gnuplot "./grafy.gnuplot" && eog "./grafy.png"

