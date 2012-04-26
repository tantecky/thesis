reset
set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "w5-3s.png"
set yrange [0 : 0.3]
set ytics 0.03
#set xtics 0.025
#set mxtics 3
#set mytics 3
set ylabel "y (m)"
set xlabel "Obj. zlomek PVC"
set format x "{/Arial=12} %1.2f"
set format y "{/Arial=12} %1.2f"
plot 'EE-w5-3s.csv'  using 5:2  with lines title "{/Arial=12}Eulerian-Eulerian" lw 2.0 \
, 'EGM-w5-3s.csv'  using 5:2   title "{/Arial=12}Eulerian-Granular" with lines lw 2.0 \

reset
set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "w15-5s.png"
set yrange [0 : 0.3]
set ytics 0.03
#set xtics 0.025
#set mxtics 3
#set mytics 3
set ylabel "y (m)"
set xlabel "Obj. zlomek PVC"
set format x "{/Arial=12} %1.2f"
set format y "{/Arial=12} %1.2f"
plot 'EE-w15-5s.csv'  using 5:2  with lines title "{/Arial=12}Eulerian-Eulerian" lw 2.0 \
, 'EGM-w15-5s.csv'  using 5:2   title "{/Arial=12}Eulerian-Granular" with lines lw 2.0 \
