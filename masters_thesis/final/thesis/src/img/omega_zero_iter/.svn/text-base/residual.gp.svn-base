#!/usr/bin/env gnuplot

set size 0.6
set key left bottom
set logscale y 10
set yrange [1.0E-3:]
set format y "10^{%L}"
set xlabel "Number of iterations"
set ylabel "Relative residual norm"
set terminal postscript eps enhanced
set output "residual.eps"
plot "residual_0.0001.dat" usi 2 w lp title "{/Symbol w}_0 = 0.0001",\
     "residual_0.001.dat" usi 2 w lp title "{/Symbol w}_0 = 0.001",\
     "residual_0.01.dat" usi 2 w lp title "{/Symbol w}_0 = 0.01",\
     "residual_0.1.dat" usi 2 w lp title "{/Symbol w}_0 = 0.1",\
     "residual_0.2.dat" usi 2 w lp title "{/Symbol w}_0 = 0.2",\
     "residual_0.4.dat" usi 2 w lp title "{/Symbol w}_0 = 0.4",\
     "residual_0.8.dat" usi 2 w lp title "{/Symbol w}_0 = 0.8"
