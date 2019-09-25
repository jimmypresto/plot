set term png small size 800,600
set output "output.png"

set xlabel "delay ms"
set ylabel "parse ms"

set xrange [0:1000]
set yrange [0:300]
set ytics nomirror

set style fill transparent solid 5 noborder
set style circle radius 3
plot 'scatter.dat' u 1:2 with circles lc rgb "blue", \
  '' u 1:2 every 100 w circles lc rgb "red" fs solid 1.0 border lt 1
