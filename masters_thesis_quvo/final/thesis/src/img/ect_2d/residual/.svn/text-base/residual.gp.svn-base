#!/usr/bin/env gnuplot

set size 0.6
set logscale y 10
set format y "10^{%L}"
set xrange [0:178]
set yrange [1.0E-3:]
set xlabel "Number of total iterations"
set ylabel "Relative residual norm"
set terminal postscript eps enhanced
set output "residual.eps"
plot "residual.dat" using 1:3 with linespoints notitle
