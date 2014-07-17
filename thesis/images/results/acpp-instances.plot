set title 'SA behavior related to the problem difficulty increasing' 
set xlabel 'Problem instance'
set ylabel 'Number of iterations' 
set yrange [0:1200]
set style line 5 lt rgb "red" lw 1 pt 7
plot 'data/acpp-instances.dat' with yerrorbars ls 5 notitle
