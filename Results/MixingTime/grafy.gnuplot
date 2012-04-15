set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "w5-6s-voda.png"
#set xrange [0 : 7]
#set ytics 0.2
#set xtics 0.5
#set mxtics 3
#set mytics 3
#set ylabel "{/Symbol s}"
set xlabel "t (s)"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.1e"
plot 'w5-6s-voda.out' using ($1-7):2 with lines title "{/Arial=12}w5" lw 2.0 \

reset
set terminal pngcairo enhanced size 800,600 font "Arial Bold, 12"
set output "w10-6s-voda.png"
#set xrange [0 : 7]
#set ytics 0.2
#set xtics 0.5
#set mxtics 3
#set mytics 3
#set ylabel "{/Symbol s}"
set xlabel "t (s)"
set format x "{/Arial=12} %1.1f"
set format y "{/Arial=12} %1.1e"
plot 'w10-6s-voda.out' using ($1-7):2 with lines title "{/Arial=12}w10" lw 2.0
