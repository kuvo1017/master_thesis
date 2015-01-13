#!/usr/bin/gnuplot

set size 0.6
set key left top
set xrange [-1:41]
set yrange [0:]
set xlabel "Crack propagation step"
set ylabel "Number of iterations" offset 1.0
set terminal postscript eps enhanced
set output "num_iter.eps"
plot "num_iter.dat" using 0:1:(0.6) w boxes fs pattern 1 notitle,\
     15.6 w l title "Average (15.6)" # 639 / 41
