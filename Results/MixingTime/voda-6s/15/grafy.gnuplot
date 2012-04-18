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
'pd060wt01abpg15' using 1:2 with lines title "pd060wt01abpg15",\
'pd060wt02abpg15' using 1:2 with lines title "pd060wt02abpg15",\
'pd060wt03abpg15' using 1:2 with lines title "pd060wt03abpg15",\
'pd060wt04abpg15' using 1:2 with lines title "pd060wt04abpg15",\
'pd060wt06abpg15' using 1:2 with lines title "pd060wt06abpg15",\
'pd060wt07abpg15' using 1:2 with lines title "pd060wt07abpg15",\
'pd060wt08abpg15' using 1:2 with lines title "pd060wt08abpg15",\
'w15-6s-voda.probe' using ($1-7):($2 / 1.5e-5) with lines title "{/Arial=12}w15" lw 2.0
