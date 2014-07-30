\name{daycnv}
\alias{daycnv}

\title{
 Convert Julian dates to Gregorian calendar dates
}
\description{
Convert Julian dates to Gregorian calendar dates
}
\usage{
daycnv(xjd)
}
\arguments{
  \item{xjd}{Julian Date [scalar or vector]}
}
\details{
If the input xjd is a vector, then the outputs (yr,mn,day, and hr) will be vectors of the same length.

Uses the algorithm of Fliegel and Van Flandern (1968) as reported in
the "Explanatory Supplement to the Astronomical Almanac" (1992), p. 604
Works for all Gregorian calendar dates with XJD > 0, i.e., dates after
-4713 November 23.   Be sure that the Julian date is specified as double precision to maintain accuracy at the fractional hour level.

Other conversions and manipulations of Julian dates are provided by the CRAN packages \emph{chron} and \emph{dates}. 
}
\value{
  \item{yr}{year (integer)}
	\item{mn}{month (integer)}
	\item{day}{day (integer)}
	\item{hr}{hours and fractional hours (real)}
}
\author{
Converted to IDL from Yeoman's Comet Ephemeris Generator, B. Pfarr, STX, 1988

R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
daycnv(2440000.0)  # 1200 on May 23 1968
}
\keyword{ misc }
