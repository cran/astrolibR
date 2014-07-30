\name{jdcnv}
\alias{jdcnv}

\title{
 Convert Gregorian dates to Julian days
}
\description{
Convert Gregorian dates to Julian days
}
\usage{
jdcnv(yr, mn, day, hr)
}
\arguments{
\item{yr}{year, integer scalar or vector}
\item{mn}{month,  integer (1-12) scalar or vector}
\item{day}{day, integer 1-31) scalar or vector}
\item{hr}{hours and fractions of hours of universal time (U.T.), scalar
         or vector}
}
\value{
\item{julian}{Julian date} 
}
\author{
Converted to IDL from Yeoman's Comet Ephemeris Generator, B. Pfarr, STX, 1988

R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
# To find the Julian Date for 1978 January 1, 0h (U.T.)
# Result: julian = 2443509.5

jdcnv(1978, 1, 1, 0.)
}
\keyword{ misc }
