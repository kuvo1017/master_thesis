#!/usr/bin/gnuplot

sigma            = 100.0E+6
large_w          =  48.0E-3
xi(small_a)      = small_a / large_w
large_f(small_a) = 1.12 - 0.231*xi(small_a) + 10.55*xi(small_a)**2 - 21.72*xi(small_a)**3 + 30.39*xi(small_a)**4
large_k(small_a) = sigma * sqrt(pi * small_a) * large_f(small_a)

set size 0.5
set key right bottom
set xlabel "Crack length [m]"
set ylabel "Stress intensity factor [Pa{/Symbol \326}m]" offset 2
set terminal postscript eps enhanced
set output "ect.eps"
plot "ect.dat" using 2:4 with points title "Partitioned coupling",\
     large_k(x) with lines title "Theory"
