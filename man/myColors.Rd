\name{myColors}
\alias{myColors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
myColors()
}
\description{
Creates a colorful scatterplot
}
\usage{
myColors()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function () 
{
    x1 <- rnorm(20, mean = 2)
    y1 <- rnorm(20, mean = 1)
    x2 <- rnorm(20, mean = 3)
    y2 <- rnorm(20, mean = 2)
    x3 <- rnorm(20, mean = 1)
    y3 <- rnorm(20, mean = 3)
    library("colorspace")
    pal <- choose_palette()
    colors_A <- pal(3)
    colors_B <- rainbow_hcl(3)
    par(mfrow = c(1, 2))
    plot(c(x1, x2, x3), c(y1, y2, y3), type = "n", xlab = "x values", 
        ylab = "y values", main = "Example A: scatterplot")
    points(x1, y1, col = colors_A[1])
    points(x2, y2, col = colors_A[2])
    points(x3, y3, col = colors_A[3])
    plot(c(x1, x2, x3), c(y1, y2, y3), type = "n", xlab = "x values", 
        ylab = "y values", main = "Example B: scatterplot")
    points(x1, y1, col = colors_B[1])
    points(x2, y2, col = colors_B[2])
    points(x3, y3, col = colors_B[3])
    return("Plot complete")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
