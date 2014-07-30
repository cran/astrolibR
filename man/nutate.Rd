\name{nutate}
\alias{nutate}

\title{ Calculate the nutation in longitude and obliquity for a given Julian date
}
\description{
Calculate the nutation in longitude and obliquity for a given Julian date
}
\usage{
nutate(jd)
}

\arguments{
\item{jd}{Julian ephemeris date, scalar or vector}
}
\details{
This function uses the formula in Meuss (1998, Chpt. 22) which is based on the 1980 IAU Theory of Nutation and includes all terms larger than 0.0003".

}
\value{
\item{nut_long}{nutation in longitude, same number of elements as jd}
\item{nut_obliq}{nutation in latitude, same number of elements as jd}
}
\references{
Meeus, J., 1998,  ``Astronomical Algorithms'', 2nd ed.
}
\author{
Written,    W. Landsman                1992

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{cirrange}}
\code{\link{polyidl}}
}
\examples{
# Find the nutation in longitude and obliquity 1987 on Apr 10 at Oh.
# Result: nut_long = -3.788    nut_obliq = 9.443
# This is example 22.a from Meeus

jul = jdcnv(1987,4,10,0)
nutate(jul)
       
# Plot the large-scale variation of the nutation in longitude 
# during the 20th century. This plot will reveal the dominant 18.6 year
# period, but a finer grid is needed to display the shorter periods in 
# the nutation.


yr = 1900 + seq(0,100)    # establish sequence of years      
jul = jdcnv(yr,1,1,0)          # find Julian date of first day of year
out = nutate(jul)               # compute nutation
plot(yr, out$nut_long, lty=1, lwd=2, xlab='Year', ylab='Nutation longitude (degrees)')
}
\keyword{ misc }
