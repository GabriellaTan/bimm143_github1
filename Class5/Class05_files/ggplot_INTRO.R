library(ggplot2)
View(mpg)
#ggplot(data= 'data.frame name') 
# + aes(x= 'data column for x', y='data column for y')
# + Geom_point (for typoe of the plot)
ggplot(data=mpg) + aes(x= displ, y= hwy) + geom_point()
ggplot(data=mpg) + aes(x= displ, y= hwy) + geom_point() +geom_smooth()
ggplot(data=mpg) + aes(x= displ, y= hwy) + geom_point() + geom_smooth() + theme_bw()
#theme_bw gives a nice minimalistic grid background. 
ggplot(data=mpg) + aes(x= displ, y= hwy, color= class) + geom_point()
#aes(x, y, color= <category #3>)
ggplot(data=mpg) + aes(x= displ, y= hwy, color=class, shape=factor(cyl)) + geom_point()
#shape= factor(cyl) makes a 4th category in our plot, but instead of numerical, it's categorical
ggplot(data=mpg) + aes(x= displ, y= hwy, color=class, shape=factor(cyl)) + geom_point()+ facet_wrap(~cyl)
#facet_wrap separates the plots according the "cyl"

#GEOMS
  #geom_bar -> bar plots
  #geom_histogram -> histograms (only need x)
  #geom_boxplot -> x & y values
  #geom_FUNCTIONS
