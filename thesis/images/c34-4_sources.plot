set xrange [0:24]
set yrange [0:90]
set term postscript enhanced colour
set output "c34-4_sources.ps"
set title "C34-4 sources' visibility" font ",40"
set xlabel "LST (h)" font ",30"
set xtics font ",15"
set ylabel "Altitude (degrees)" font ",30"
set ytics font ",15"
set grid
set multiplot
plot asin(sin(-0.40182531139466626)*sin(-0.2345011028235171)+cos(-0.40182531139466626)*cos(-0.2345011028235171)*cos(x*0.2617993877991494-0.9052417402893522))*180/3.141592653589793 notitle;
plot asin(sin(-0.40182531139466626)*sin(-0.5212558630637142)+cos(-0.40182531139466626)*cos(-0.5212558630637142)*cos(x*0.2617993877991494-3.5649018258554768))*180/3.141592653589793 notitle;
unset multiplot;
