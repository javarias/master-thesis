set key outside right top vertical Left reverse noenhanced autotitles columnhead nobox
set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75
set title 'DRR Executive breakdown for array 7m' font ",30"
set xlabel 'Week' font ",30"
set ylabel 'Hours [h]' font ",30"
set xtics  norangelimit font ",8"
plot for [COL=2:7:1] 'data/drr-7m.dat' using COL:xticlabel(1) title columnhead
