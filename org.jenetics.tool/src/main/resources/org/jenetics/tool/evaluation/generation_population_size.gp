################################################################################
# Parameters
# * data - the data file
# * output - the output file
################################################################################

################################################################################
# Output definition
################################################################################
set terminal svg size 700, 400 enhanced fname "Times Roman" fsize 11
set output output

set grid

set logscale x
set logscale y
set autoscale z

#set xrange[10:9000]
#set yrange[10:9000]

set xlabel "Generation" font ",12"
set ylabel "Population size" font ",12"
set zlabel "Fitness" rotate left

set bmargin
set origin 0.0, 0.0
set tmargin 1
set pm3d
set cntrparam levels auto 10
set contour

set format x "10^{%L}"
set format y "10^{%L}"
set format z " %2.1f"

set key bottom
set hidden3d
set dgrid3d 20,20

min(x,y) = (x < y) ? x : y
max(x,y) = (x > y) ? x : y

splot data using 1:2:($20) with lines notitle
