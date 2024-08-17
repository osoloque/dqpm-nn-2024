#!/usr/bin/gnuplot

set terminal postscript  enhanced color 22
set xtics auto
set ytics auto

set xrange [0.9:2.5]
set yrange [0:5]
set output "./g2TTC_dqpm21_new.eps"
set key spacing 1.0
set key left
set xlabel "T/Tc"
set ylabel "g2/4pi"

a0(x)=-0.152827+0.456358*0.155/x-0.152746*0.155**2/x**2+0.0245746*0.155**3/x**3
#0.249191 +(- gT2/xT**2 + gT3/xT**3 + gT4/xT**4 +gT6/xT**6)
#b0(x)=0.249191+1.7655/x**2-b3/x**3+b4/x**4+b6/x**6
b0(x)=0.249191+1.7655/x**2-2.17/x**3+2.13/x**4+0.75/x**6
c0(x)=0.29+1.7655/x**2-2.37/x**3+2.53/x**4+0.95/x**8#+0.75/x**6
#c0(x)=0.5-3.25/x**2+6.2585/x**3-0.05/x**4
#dashed red
set linestyle 11 pi 2 dt 1 pt 7 ps 0.3 lw 2 lc rgb "cyan"

#fit [1:4] b0(x) 'alpha_s_nf2_kazmarek.dat' u ($1):($2) via b3,b4,b4,b6

plot 'alpha_s_nf2_kazmarek.dat' usi ($1):($2) w p ls 1 t 'lQCD',c0(x) ls 0 lc 7 t 'c0',b0(x) w li ls 11 t 'fit , x=T/Tc'


