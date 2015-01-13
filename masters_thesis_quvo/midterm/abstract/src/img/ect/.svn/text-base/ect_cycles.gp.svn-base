#!/usr/bin/gnuplot

large_c = 3.78E-12
small_m = 3.07
delta_a = 0.050E-2

large_n = 0
delta_n(delta_k) = delta_a / (large_c * (delta_k*1.0E-6)**small_m)

set size 0.5
# set log x
set xrange [0:]
set key right bottom
set xlabel "Number of cycles"
set ylabel "Crack length [m]" offset 2
set terminal postscript eps enhanced
set output "ect_cycles.eps"
plot "ect.dat" using (large_n=large_n+delta_n($4)):($2+delta_a) with points notitle
