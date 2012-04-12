set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "vel-2s.png"
#set yrange [0 : 0.3]
set ytics 0.03
set xtics 0.025
set mxtics 3
set mytics 3
set ylabel "y (m)"
set xlabel "Rychlost PVC (m/s)"
set format x "{/Arial=12} %1.3f"
set format y "{/Arial=12} %1.2f"
plot 'neu-2s.csv'  using 4:2  with lines title "{/Arial=12}Schiller-Naumann" lw 2.0 \
, 'bru-2s.csv'  using 4:2   title "{/Arial=12}Brucato" with lines lw 2.0 \
, 'pin-2s.csv'  using 4:2   title "{/Arial=12}Pinelli" with lines lw 2.0 \
, 'kho-2s.csv'  using 4:2   with lines title "{/Arial=12}Khopkar" lw 2.0 linecolor rgb "black"

set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "vel-7s.png"
#set yrange [0 : 0.3]
set ytics 0.03
set xtics 0.025
set mxtics 3
set mytics 3
set ylabel "y (m)"
set xlabel "Rychlost PVC (m/s)"
set format x "{/Arial=12} %1.3f"
set format y "{/Arial=12} %1.2f"
plot 'neu-7s.csv'  using 4:2  with lines title "{/Arial=12}Schiller-Naumann" lw 2.0 \
, 'bru-7s.csv'  using 4:2   title "{/Arial=12}Brucato" with lines lw 2.0 \
, 'pin-7s.csv'  using 4:2   title "{/Arial=12}Pinelli" with lines lw 2.0 \
, 'kho-7s.csv'  using 4:2   with lines title "{/Arial=12}Khopkar" lw 2.0 linecolor rgb "black"

reset
set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "vol-2s.png"
#set yrange [0 : 0.3]
set ytics 0.03
set xtics 0.025
set mxtics 3
set mytics 3
set ylabel "y (m)"
set xlabel "Obj. zlomek PVC"
set format x "{/Arial=12} %1.3f"
set format y "{/Arial=12} %1.2f"
plot 'neu-2s.csv'  using 5:2  with lines title "{/Arial=12}Schiller-Naumann" lw 2.0 \
, 'bru-2s.csv'  using 5:2   title "{/Arial=12}Brucato" with lines lw 2.0 \
, 'pin-2s.csv'  using 5:2   title "{/Arial=12}Pinelli" with lines lw 2.0 \
, 'kho-2s.csv'  using 5:2   with lines title "{/Arial=12}Khopkar" lw 2.0 linecolor rgb "black"

reset
set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "vol-7s.png"
#set yrange [0 : 0.3]
set ytics 0.03
set xtics 0.01
set mxtics 3
set mytics 3
set ylabel "y (m)"
set xlabel "Obj. zlomek PVC"
set format x "{/Arial=12} %1.2f"
set format y "{/Arial=12} %1.2f"
plot 'neu-7s.csv'  using 5:2  with lines title "{/Arial=12}Schiller-Naumann" lw 2.0 \
, 'bru-7s.csv'  using 5:2   title "{/Arial=12}Brucato" with lines lw 2.0 \
, 'pin-7s.csv'  using 5:2   title "{/Arial=12}Pinelli" with lines lw 2.0 \
, 'kho-7s.csv'  using 5:2   with lines title "{/Arial=12}Khopkar" lw 2.0 linecolor rgb "black"

reset
set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "cd-2s.png"
#set yrange [0 : 0.3]
set ytics 0.03
set xtics 0.1
set mxtics 3
set mytics 3
set key left
set ylabel "y (m)"
set xlabel "C_{D} / C_{D,avg}"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.2f"
plot 'neu-2s.csv'  using ($7/12.97):2  with lines title "{/Arial=12}Schiller-Naumann" lw 2.0 \
, 'bru-2s.csv'  using ($7/13.19):2   title "{/Arial=12}Brucato" with lines lw 2.0 \
, 'pin-2s.csv'  using ($7/13.23):2   title "{/Arial=12}Pinelli" with lines lw 2.0 \
, 'kho-2s.csv'  using ($7/13.34):2   with lines title "{/Arial=12}Khopkar" lw 2.0 linecolor rgb "black"

reset
set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "cd-7s.png"
#set yrange [0 : 0.3]
set ytics 0.03
set xtics 0.1
set mxtics 3
set mytics 3
set key left
set ylabel "y (m)"
set xlabel "C_{D} / C_{D,avg}"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.2f"
plot 'neu-7s.csv'  using ($7/14.14):2  with lines title "{/Arial=12}Schiller-Naumann" lw 2.0 \
, 'bru-7s.csv'  using ($7/15.1):2   title "{/Arial=12}Brucato" with lines lw 2.0 \
, 'pin-7s.csv'  using ($7/14.4):2   title "{/Arial=12}Pinelli" with lines lw 2.0 \
, 'kho-7s.csv'  using ($7/14.59):2   with lines title "{/Arial=12}Khopkar" lw 2.0 linecolor rgb "black"

