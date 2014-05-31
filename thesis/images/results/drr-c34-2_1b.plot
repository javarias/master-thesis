set key outside right top vertical Left reverse noenhanced autotitles columnhead nobox
set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75
set title 'DRR Executive breakdown normalized for array C34-2'
set xlabel 'Week'
set ylabel 'Percentage [%]'
set xtics  norangelimit font ",8"
plot for [COL=2:7:1] 'data/drr-c34-2_1.dat' using (100.*column(COL)/$8):xticlabel(1) title columnhead(COL)