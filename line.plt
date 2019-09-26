set term png small size 800,600
set output "output.png"

set xrange [0:1000]
set yrange [0:500]
set ytics nomirror

set style fill transparent solid 5 noborder

plot '< sort -nk1 line.dat' u 1 with line smooth unique lc rgb "red" title "request init delay", \
     '< sort -nk2 line.dat' u 2 with line smooth unique lc rgb "grey" title "parse delay", \
     '< sort -nk3 line.dat' u 3 with line smooth unique lc rgb "brown" title "parse ms", \
     '< sort -nk4 line.dat' u 4 with line smooth unique lc rgb "blue" title "downstream ms", \
     '< sort -nk5 line.dat' u 5 with line smooth unique lc rgb "orange" title "graph ms"
