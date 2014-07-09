set xrange [0:24]
set yrange [0:90]
set term postscript enhanced colour
set output "c34-5_sources.ps"
set title "C34-5 sources' visibility" font ",40"
set xlabel "LST (h)" font ",30"
set xtics font ",15"
set ylabel "Altitude (degrees)" font ",30"
set ytics font ",15"
set grid
set multiplot
plot asin(sin(-0.40182531139466626)*sin(-0.9090358331676833)+cos(-0.40182531139466626)*cos(-0.9090358331676833)*cos(x*0.2617993877991494-0.9891020853824014))*180/3.141592653589793 notitle;
plot asin(sin(-0.40182531139466626)*sin(-0.6902486303428907)+cos(-0.40182531139466626)*cos(-0.6902486303428907)*cos(x*0.2617993877991494-3.1745699225857043))*180/3.141592653589793 notitle;
plot asin(sin(-0.40182531139466626)*sin(-0.38320579956481393)+cos(-0.40182531139466626)*cos(-0.38320579956481393)*cos(x*0.2617993877991494-4.696483797180194))*180/3.141592653589793 notitle;
unset multiplot;
