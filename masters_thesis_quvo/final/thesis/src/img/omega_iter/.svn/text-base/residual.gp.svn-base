#!/usr/bin/env gnuplot

set size 0.6
set logscale y 10
set yrange [1.0E-3:]
set format y "10^{%L}"
set xlabel "Number of iterations"
set ylabel "Relative residual norm"
set terminal postscript eps enhanced
set output "residual.eps"
plot "residual_0.1.dat" usi 2 w lp title "{/Symbol w} = 0.1",\
     "residual_0.2.dat" usi 2 w lp title "{/Symbol w} = 0.2",\
     "residual_0.3.dat" usi 2 w lp title "{/Symbol w} = 0.3",\
     "residual_0.4.dat" usi 2 w lp title "{/Symbol w} = 0.4",\
     "residual_aitken.dat" usi 2 w lp title "Aitken extrapolation"
