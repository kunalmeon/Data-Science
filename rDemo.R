
library(datasets)
data(mtcars)


value<-tail(data.frame(mtcars),5)
value

library(ggplot2)
ggplot(aes(x=cyl), data=mtcars)+geom_histogram(bandwidth=7)

## Changing the axis names
ggplot(aes(x=cyl), data=mtcars)+geom_histogram(bandwidth=7)+labs(x="Engine Type",y="Number of cylinders")

## Adding title to our histogram
ggplot(aes(x=cyl), data=(mtcars))+geom_histogram(bandwidth=7)+ggtitle("Histogram of different engine types")

## Making more interactive graphs using GGally
install.packages("GGally")
library(GGally)

ggpairs(iris, mapping=ggplot2::aes(colour = Species))
