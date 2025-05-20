#' ---
#' title: "Intro to R"
#' author: "Gabriella Tanoto"
#' date: "April 10, 2025"
#' ---

#First R Script (when using #, this is not an R Script!)
x <- 1:50
x
plot(x)
plot(x, cos(x))
plot(x, cos(x), typ="l")
plot(x, cos(x), typ="l", col="pink", lwd="2.93") 
#lwd is line width, col is color and typ is type of the graph!
?plot
plot(x, cos(x), typ="l", col="pink", lwd="2.93", xlab="X axis", ylab="Cosinuhhh")
