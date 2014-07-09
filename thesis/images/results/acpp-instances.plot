set title 'SA behavior related to the problem difficulty increasing' font ",40"
set xlabel 'Problem instance' font ",30"
set ylabel 'Number of iterations' font ",30"
set yrange [0:1200]
set style line 5 lt rgb "red" lw 1 pt 7
plot 'data/acpp-instances.dat' with yerrorbars ls 5 notitle
