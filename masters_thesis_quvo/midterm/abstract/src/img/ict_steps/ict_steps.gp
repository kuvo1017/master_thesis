#!/usr/bin/gnuplot

set format x "%1.1E"
set xrange [0:2.0E+5]
set yrange [0:400]
set xtics 1.0E+5
set ytics 100
set xlabel "Number of nonzeros"
set ylabel "Number of PCG iterations" offset 1.5
set size 0.5
set terminal postscript eps enhanced
set output "ict_steps.eps"
plot "ict_steps_7x6x6.dat" using 3:4 with linespoints lt 1 title "7,605 DOFs",\
     "ict_steps_6x5x5.dat" using 3:4 with linespoints lt 8 title "4,719 DOFs",\
     "ict_steps_5x4x4.dat" using 3:4 with linespoints lt 3 title "2,673 DOFs",\
     "ict_steps_4x3x3.dat" using 3:4 with linespoints lt 4 title "1,323 DOFs"
