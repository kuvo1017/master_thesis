#!/usr/bin/env gnuplot

set size 0.6
set key right bottom
set format x "%1.1f"
set format y "%1.1f"
set yrange [0:28]
set xlabel "Thickness direction coordinate [mm]"
set ylabel "Stress intensity factor [MPa{/Symbol \326}m]"
set terminal postscript eps enhanced
set output "sif_thickness.eps"
plot 24.6 w l ls 1 title "Theory (2D)",\
     "sif_thickness.dat" usi ($1*1.0E+3):($2*1.0E-6)  w p ls 2 \
     title "Partitioned iterative algorithm",\
     "sif_thickness.dat" usi (-$1*1.0E+3):($2*1.0E-6) w p ls 2 notitle,\
     "sif_thickness.dat" usi ($1*1.0E+3):($3*1.0E-6)  w p ls 4 \
     title "Conventional FEA",\
     "sif_thickness.dat" usi (-$1*1.0E+3):($3*1.0E-6) w p ls 4 notitle
