#!/usr/bin/gnuplot

nnz_jacobi   = 2673
steps_jacobi = 334
nnz_ic0      = 88280
steps_ic0    = 62

set parametric
set format x "%1.1E"
set xrange [0:2.0E+5]
set xtics 1.0E+5
set ytics 100
set xlabel "Numbers of nonzeros"
set ylabel "Number of PCG iterations" offset 1.5
set label "IC (0)" at nnz_ic0, steps_ic0+35
set label "Diagonal scaling" at nnz_jacobi+0.5E+4, steps_jacobi
set label "ICT" at 1.5E+4, 150
set size 0.5
set terminal postscript eps enhanced
set output "ic_steps.eps"
plot nnz_jacobi, steps_jacobi with points pointsize 1.2 pt 5 lt 8 notitle,\
     nnz_ic0, steps_ic0 with points pointsize 1.2 pt 2 lt 1 notitle,\
     "../ict_steps/ict_steps_5x4x4.dat" using 3:4 \
     with linespoints notitle
