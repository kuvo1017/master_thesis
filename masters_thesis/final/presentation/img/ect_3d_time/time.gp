#!/usr/bin/env gnuplot

set size 0.6
set key right top
set xrange [-0.7:1.7]
set yrange [0:70000]
set xtics nomirror
set xtics ("Conventional FEA" 0, "Partitioned algorithm" 1)
set ylabel "Computation time [s]" offset 1.0
set terminal postscript eps enhanced
set output "time.eps"
plot "time.dat" usi 0:1:(0.6) w boxes lt 1 fs pattern 2 \
     title "{/Italic Simultaneous linear equation solver}",\
     "time.dat" usi 0:6:(0.6) w boxes lt 1 fs pattern 3 \
     title "{/Italic Other}"
