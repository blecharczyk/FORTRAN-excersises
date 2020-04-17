unset grid
set terminal pdf
set output "wykres4.pdf"
set key box top left
set multi
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'N' font 'Arial,14'
set ylabel 'multiplication time' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
set termoption dashed

plot "result4Naive" title "naive"
replot "result4Better" title "better"
replot "result4Dot" title "dot"
replot "result4Matmul" title "matmul"

unset multi

