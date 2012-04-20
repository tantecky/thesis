set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "grafy.png"
set xrange [0 : 10]
set yrange [0 : *]
#set ytics 0.2
set xtics 1.0
#set mxtics 3
#set mytics 3
set ylabel "c^{*}"
set xlabel "t (s)"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.1f"
plot \
'cfd.probe' using ($1-7.05):($2 / 0.00028407539) with lines title "{/Arial=12}simulace" lw 2.0 ,\
'pd070pb01abpg5' using 1:2 with lines title "{/Arial=12}experiment" ls 7,\
'pd070pb02abpg5' using 1:2 with lines notitle ls 7,\
'pd070pb03abpg5' using 1:2 with lines notitle ls 7,\
'pd070pb04abpg5' using 1:2 with lines notitle ls 7,\
'pd070pb05abpg5' using 1:2 with lines notitle ls 7,\
'pd070pb06abpg5' using 1:2 with lines notitle ls 7
