set table "image6.plot.table"; set format "%.5f"
 f(x,y) = +2*(x+1)/sqrt((x+1)**2+y**2) + +1*(x-1)/sqrt((x-1)**2+y**2); set xrange [-3:3]; set yrange [-3:3]; set view 0,0; set isosample 400,400; set cont base; set cntrparam levels discrete -2.98,-2.7,-2.1,-1.5,-0.9,-0.3, 0.3,0.9,1.5,2.1,2.7,2.98; unset surface; splot f(x,y) 
