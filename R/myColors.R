##Tutorial from http://hclwizard.org/how-to-use/hot-to-use-in-r/
myColors <- function(){
## Generating some synthetic data
x1 <- rnorm(20,mean=2); y1 <- rnorm(20,mean=1)
x2 <- rnorm(20,mean=3); y2 <- rnorm(20,mean=2)
x3 <- rnorm(20,mean=1); y3 <- rnorm(20,mean=3)

## Loading the library colorspace
library('colorspace')

## Call choose_palette. Note: interactive GUI opens
pal <- choose_palette()

## Picking 3 different colors out of your palette
colors_A <- pal(3)
## And picking 3 colors out of the HCL rainbow palette
colors_B <- rainbow_hcl(3)

## Create a plot containing 2 subplots
par(mfrow=c(1,2))

## Makes a scatterplot with your own choosen colors
plot(c(x1,x2,x3),c(y1,y2,y3),type='n',xlab='x values',
     ylab='y values',main='Example A: scatterplot')

points(x1,y1,col=colors_A[1])
points(x2,y2,col=colors_A[2])
points(x3,y3,col=colors_A[3])

## The same plot with the rainbow_hcl colors
plot(c(x1,x2,x3),c(y1,y2,y3),type='n',xlab='x values',
     ylab='y values',main='Example B: scatterplot')

points(x1,y1,col=colors_B[1])
points(x2,y2,col=colors_B[2])
points(x3,y3,col=colors_B[3])

return('Plot complete')
}