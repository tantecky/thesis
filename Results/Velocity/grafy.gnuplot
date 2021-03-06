set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "velField.png"
#set yrange [0 : 0.3]
set ytics 0.03
set xtics 0.05
#set mxtics 3
#set mytics 3
set ylabel "y (m)"
set xlabel "Rychlost (m/s)"
set format x "{/Arial=12} %1.2f"
set format y "{/Arial=12} %1.2f"
plot 'std.csv'  using 4:2  with lines title "Standardní k-{/Symbol e}" lw 2.0 \
, 'rng.csv'  using 4:2   title "RNG k-{/Symbol e}" with lines lw 2.0 \
, 'real.csv'  using 4:2   title "Realisable k-{/Symbol e}" with lines lw 2.0 \
, 'rms.csv'  using 4:2   with lines title "{/Arial=12}Standardní RMS" lw 2.0 linecolor rgb "black"
