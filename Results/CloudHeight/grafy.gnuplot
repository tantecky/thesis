set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "qa.png"
#set xrange [0 : 7]
set ytics 0.2
set xtics 0.5
set mxtics 3
set mytics 3
set ylabel "{/Symbol s}"
set xlabel "t (s)"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.1f"
plot 'Vysledky.csv' using 1:2 with points title "{/Arial=12}N = 4 s^{-1}" pt 2 lw 2.0 \
, 'Vysledky.csv' using 1:2 smooth csplines with lines notitle ls 1 lw 1.0 \
, 'Vysledky.csv' using 1:3 with points title "{/Arial=12}N = 5 s^{-1}" ls 2 pt 2 lw 2.0 \
, 'Vysledky.csv' using 1:3 smooth csplines with lines notitle ls 2 lw 1.0 \
, 'Vysledky.csv' using 1:4 with points title "{/Arial=12}N = 6 s^{-1}" ls 3 pt 2 lw 2.0 \
, 'Vysledky.csv' using 1:4 smooth csplines with lines notitle ls 3 lw 1.0