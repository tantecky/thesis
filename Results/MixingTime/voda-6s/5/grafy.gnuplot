set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "grafy.png"
set xrange [0 : 10]
set yrange [0 : *]
#set ytics 0.2
#set xtics 0.5
set mxtics 3
set mytics 3
set ylabel "{/Symbol s}"
set xlabel "t (s)"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.1f"
plot \
'pd060wt01pvcabpg' using 1:2 with lines title "pd060wt01pvcabpg",\
'pd060wt02pvcabpg' using 1:2 with lines title "pd060wt02pvcabpg",\
'pd060wt03pvcabpg' using 1:2 with lines title "pd060wt03pvcabpg",\
'pd060wt04pvcabpg' using 1:2 with lines title "pd060wt04pvcabpg",\
'pd060wt05pvcabpg' using 1:2 with lines title "pd060wt05pvcabpg",\
'pd060wt06pvcabpg' using 1:2 with lines title "pd060wt06pvcabpg",\
'pd060wt07pvcabpg' using 1:2 with lines title "pd060wt07pvcabpg",\
'pd060wt08pvcabpg' using 1:2 with lines title "pd060wt08pvcabpg",\
'w5-6s-voda.probe' using ($1-7):($2 / 23.8e-5) with lines title "{/Arial=12}w10" lw 2.0
