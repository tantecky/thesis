set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "qa.png"
#set yrange [0 : 0.3]
#set ytics 0.03
#set xtics 0.025
set mxtics 3
set mytics 3
set ylabel "y (m)"
set xlabel "Rychlost PVC (m/s)"
set format x "{/Arial=12} %1.3f"
set format y "{/Arial=12} %1.2f"
plot 'Vysledky.csv'  using 1:2  with lines title "{/Arial=12}Schiller-Naumann" lw 2.0 \
, 'Vysledky.csv'  using 1:3   title "{/Arial=12}Brucato" with lines lw 2.0 \
, 'Vysledky.csv'  using 1:4   title "{/Arial=12}Pinelli" with lines lw 2.0 \


