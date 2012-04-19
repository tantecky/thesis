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
'cfd.probe' using ($1-7.018):($2 / 0.00024476202) with lines title "{/Arial=12}simulace" lw 2.0 ,\
'pd060wt01pvcabpg' using 1:2 with lines title "{/Arial=12}experiment" ls 7,\
'pd060wt02pvcabpg' using 1:2 with lines notitle ls 7,\
'pd060wt03pvcabpg' using 1:2 with lines notitle ls 7,\
'pd060wt04pvcabpg' using 1:2 with lines notitle ls 7,\
'pd060wt05pvcabpg' using 1:2 with lines notitle ls 7,\
'pd060wt06pvcabpg' using 1:2 with lines notitle ls 7,\
'pd060wt07pvcabpg' using 1:2 with lines notitle ls 7,\
'pd060wt08pvcabpg' using 1:2 with lines notitle ls 7
