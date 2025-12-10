set terminal pngcairo size 1000,600
set output "comparacao_e1_e2.png"

set title "Comparação de Desempenho - E1 vs E2"
set xlabel "Tamanho da entrada (N)"
set ylabel "Tempo (s)"

set logscale x
set logscale y

set grid
set key left top

set datafile separator ","

plot \
    "./csv/timee1.csv" using 1:2 skip 1 with linespoints lw 2 pt 7 title "E1", \
    "./csv/timee2.csv" using 1:2 skip 1 with linespoints lw 2 pt 5 title "E2"
