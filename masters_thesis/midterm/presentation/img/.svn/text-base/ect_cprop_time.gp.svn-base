#!/usr/bin/gnuplot

set size 0.5
set parametric
set key left top
set xrange [-2:2]
set yrange [0:140]
set xtics nomirror
set xtics ("Conventional FEA" -1, "Partitioned coupling" 1)
set ylabel "Computation time [s]" offset 2
set terminal postscript eps enhanced color
set output "ect_cprop_time.eps"
plot -1, 117.71 with impulses lt 1 lc 1 lw 120 notitle,\
      1, 29.27  with impulses lt 1 lc 3 lw 120 notitle
