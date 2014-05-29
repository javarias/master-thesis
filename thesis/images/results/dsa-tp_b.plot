set key outside right top vertical Left reverse noenhanced autotitles columnhead nobox
set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75
set title 'DSA Executive breakdown normalized for array TP'
set xlabel 'Week'
set ylabel 'Percentage [%]'
set xtics  norangelimit font ",8"
set yrange [ 0.00000 : 100.000 ] noreverse nowriteback
plot for [COL=2:7:1] 'data/dsa-tp.dat' using (100.*column(COL)/$8):xticlabel(1) title columnhead(COL)
