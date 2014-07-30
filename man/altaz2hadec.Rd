\name{altaz2hadec}
\alias{altaz2hadec}

\title{ Convert horizon (Alt-Az) coordinates to hour angle and declination
}
\description{
Convert horizon (Alt-Az) coordinates to hour angle and declination
}
\usage{
altaz2hadec(alt,az,lat)
}

\arguments{

  \item{alt}{local apparent altitude, in degrees, scalar or vector}
  \item{az}{local apparent altitude, in degrees, scalar or vector, measured east of north}
  \item{lat}{local geodetic latitude, in degrees, scalar or vector}
}
\details{
For inputs, if you have measured azimuth west-of-south
(like the book MEEUS does), convert it to east of north via: az = (az + 180) mod 360
For outputs, the hour angle is the 
time that right ascension of 0 hours crosses the local meridian.  
}
\value{
  \item{ha}{local apparent hour angle, in degrees}
  \item{dec}{local apparent declination, in degrees}
}
\author{
Written by Chris O'Dell Univ. of Wisconsin-Madison May 2002

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
	\code{\link{hadec2altaz}}
}
\examples{
altaz2hadec(59.0861,133.3081,41.3)  
}
\keyword{ misc }
