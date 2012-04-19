set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "grafy.png"
set xrange [0 : 10]
set yrange [0 : *]
#set ytics 0.2
set xtics 1.0
set mxtics 3
set mytics 3
set ylabel "c^{*}"
set xlabel "t (s)"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.1f"
plot \
'cfd.probe' using ($1-7.521):($2 / 6.25e-5) with lines title "{/Arial=12}simulace" lw 2.0 ,\
'pd060wt01abpg10' using 1:2 with lines title "{/Arial=12}experiment" ls 7,\
'pd060wt02abpg10' using 1:2 with lines notitle ls 7,\
'pd060wt03abpg10' using 1:2 with lines notitle ls 7,\
'pd060wt04abpg10' using 1:2 with lines notitle ls 7,\
'pd060wt06abpg10' using 1:2 with lines notitle ls 7,\
'pd060wt07abpg10' using 1:2 with lines notitle ls 7,\
'pd060wt08abpg10' using 1:2 with lines notitle ls 7
