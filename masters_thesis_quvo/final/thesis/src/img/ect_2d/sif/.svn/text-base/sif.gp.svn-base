#!/usr/bin/env gnuplot

sigma            = 100.0E+6
large_w          =  48.0E-3
xi(small_a)      = small_a / large_w
large_f(small_a) = 1.12 - 0.231*xi(small_a) + 10.55*xi(small_a)**2 - 21.72*xi(small_a)**3 + 30.39*xi(small_a)**4
large_k(small_a) = sigma * sqrt(pi * small_a) * large_f(small_a)

set size 0.6
set key right bottom
set format x "%.1f"
set format y "%.1f"
set yrange [0:]
set xlabel "Crack length [mm]"
set ylabel "Stress intensity factor [MPa{/Symbol \326}m]"
set terminal postscript eps enhanced
set output "sif.eps"
plot large_k(x/1.0E+3)*1.0E-6 with lines title "Theory",\
     "sif.dat" using ($2*1.0E+3):($3*1.0E-6) \
     with points pointtype 2 title "Partitioned iterative algorithm",\
     "sif.dat" using ($2*1.0E+3):($4*1.0E-6) \
     with points pointtype 4 title "Conventional FEM",\
     "sif.dat" using ($2*1.0E+3):($5*1.0E-6) \
     with points pointtype 1 title "Zooming method"
