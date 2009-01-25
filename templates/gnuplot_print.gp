set title '[% ACCOUNT %]'
set xlabel 'Date';
set ylabel 'Balance';
set xdata time;
set timefmt "%d/%m/%Y";
set grid
set terminal png
set output "[% FILENAME %].png"
plot '[% FILENAME %]' using 1:2 title "Account balance" with linespoints;
set terminal wxt
replot
pause -1 "Hit return to continue"
