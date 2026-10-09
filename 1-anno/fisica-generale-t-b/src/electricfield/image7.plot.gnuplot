set table "image7.plot.table"; set format "%.5f"
 f(x,y) = +2*(x+1)/sqrt((x+1)**2+y**2) + -1*(x-1)/sqrt((x-1)**2+y**2); set xrange [-3:3]; set yrange [-3:3]; set view 0,0; set isosample 400,400; set cont base; set cntrparam levels discrete -0.95,-0.8,-0.6,-0.2,0.2,0.6, 1.01,1.4,1.8,2.2,2.6,2.8,2.94; unset surface; splot f(x,y) 
