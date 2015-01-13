#!/usr/bin/gnuplot

sigma            = 100.0E+6
large_w          =  48.0E-3
xi(small_a)      = small_a / large_w
large_f(small_a) = 1.12 - 0.231*xi(small_a) + 10.55*xi(small_a)**2 - 21.72*xi(small_a)**3 + 30.39*xi(small_a)**4
large_k(small_a) = sigma * sqrt(pi * small_a) * large_f(small_a)

large_c = 3.78E-12
small_m = 3.07
delta_a = 0.1E-3

delta_n(delta_k) = delta_a / (large_c * (delta_k*1.0E-6)**small_m)
large_n1 = 0
large_n2 = 0
large_n3 = 0
large_n4 = 0

set size 0.6
set key right bottom
set xtics 20000
set format y "%.1f"
set xrange [0:]
set xlabel "Number of fatigue cycles"
set ylabel "Crack length [mm]"
set terminal postscript eps enhanced
set output "cycles.eps"
plot "sif.dat" using (large_n1=large_n1+delta_n(large_k($2))):(($2+delta_a)*1.0E+3) \
     with lines title "Theory",\
     "sif.dat" using (large_n2=large_n2+delta_n($3)):(($2+delta_a)*1.0E+3) \
     with points pointtype 2 title "Partitioned iterative algorithm",\
     "sif.dat" using (large_n3=large_n3+delta_n($4)):(($2+delta_a)*1.0E+3) \
     with points pointtype 4 title "Conventional FEA",\
     "sif.dat" using (large_n4=large_n4+delta_n($5)):(($2+delta_a)*1.0E+3) \
     with points pointtype 1 title "Zooming method"
