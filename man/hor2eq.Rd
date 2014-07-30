\name{hor2eq}
\alias{hor2eq}

\title{ Converts local horizon coordinates (alt-az) to equatorial coordinates(ra-dec)
}
\description{
Converts local horizon coordinates (alt-az) to equatorial coordinates(ra-dec)}
\usage{
hor2eq(alt, az, jd,  lat=43.0783, lon= -89.865, ws=FALSE,
           b1950 = FALSE, precess_=TRUE, nutate_=TRUE,
           refract_ = TRUE, aberration_ = TRUE, altitude=0)
}
\arguments{
\item{alt}{local apparent altitude, in degrees, scalar or vector}
\item{az}{local apparent altitude, in degrees, scalar or vector, measured east of north unless \emph{ws=TRUE}}
\item{jd}{Julian Date, in days, scalar or vector}
\item{lat}{local geodetic latitude of observer, in degrees, scalar or vector (default=43.0783)}
\item{lon}{east longitude of observer, in degrees; specify west longitude with a negative sign (default=-89.865)}
\item{ws}{if =TRUE, azimuth is measured westward from south, rather than eastward of north}
\item{b1950}{if =TRUE, Right Ascension and declination are specified in B1950/FK4, rather than J2000/FK5 coordinates (default=FALSE)}
\item{precess_}{if =TRUE, precession is applied (default=TRUE)}
\item{nutate_}{if =TRUE, nutation is applied (default=TRUE)}
\item{refract_}{if =TRUE, refraction correction is applied (default=TRUE)}
\item{aberration_ }{if =TRUE, aberration correction is applied (default=TRUE)}
\item{altitude}{altitude of the observing location, in meters (default=0)}
}
\details{
This function calculates equatorial (ra,dec) coordinates from
horizon (alt,az) coords.  It is typically accurate to about 1 arcsecond
or better, performing precession, nutation, aberration, and refraction
corrections.  Inputs can be vectors except for the observer's latitude, longitude and altitude.  \emph{ra}, \emph{dec}, \emph{alt} and \emph{az} must be vectors of the same length, but \emph{jd} may be a scalar or a vector of the same length. 

Steps in the calculation: \cr
   Precess Ra-Dec to current equinox \cr
   Nutation Correction to Ra-Dec \cr
   Aberration correction to Ra-Dec \cr
   Calculate Local Mean Sidereal Time  \cr
   Calculate Local Apparent Sidereal Time \cr
   Calculate Hour Angle \cr
   Apply spherical trigonometry to find Apparent Alt-Az \cr
   Apply refraction correction to find observed Alt 

The user can add specification for \emph{temperature} and \emph{pressure} used by function \emph{co_refract} to calculate the refraction effect of the atmosphere. See \emph{co_refract} for more details.
}
\value{
\item{ra}{Right Ascension of object (J2000/FK5), in degrees, scalar or vector}
\item{dec}{declination of object (J2000/FK5), in degrees, scalar or vector}
\item{ha}{hour angle, in degrees}
}
\author{
Written by Chris O'Dell Univ. of Wisconsin-Madison

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{altaz2hadec}}
\code{\link{co_nutate}}
\code{\link{co_refract}}
\code{\link{ct2lst}}
\code{\link{precess}}
}
\examples{
#   You are at Kitt Peak National Observatory, looking at a star at azimuth
#   angle 264d 55m 06s and elevation 37d 54m 41s (in the visible).  Today is
#   Dec 25, 2041 and the local time is 10 PM precisely.  What is the ra and dec
#   (J2000) of the star you're looking at?   The temperature here is about 0
#   Celsius, and the pressure is 781 millibars.    The Julian date for this
#   time is 2466879.7083333.
#   Result: ra=00h13m14.s  dec=+15d11'0.3"   ha=+03h3m30.1s
#   The star is Algenib
 
hor2eq(ten(37,54,41), ten(264,55,06), 2466879.7083333, lat=+31.9633, lon=-111.6)

# The program produces this output (because the VERBOSE keyword was set):
# Latitude = +31 57 48.0   Longitude = *** 36  0.0    longitude prints weirdly b/c of negative 
# input to ADSTRING!!
# Julian Date =  2466879.708333
# Az, El =  17 39 40.4  +37 54 41.0   (Observer Coords)
# Az, El =  17 39 40.4  +37 53 39.6   (Apparent Coords)
# LMST = +03 53 54.1
# LAST = +03 53 53.6
# Hour Angle = +03 38 30.1  (hh:mm:ss)
# Ra, Dec:  00 15 23.5  +15 25  1.9   (Apparent Coords)
# Ra, Dec:  00 15 24.2  +15 25  0.1   (J2041.9841)
# Ra, Dec:  00 13 14.1  +15 11  0.3   (J2000)
# The star is therefore Algenib!  Compare the derived Ra, Dec with what XEPHEM got:
# Ra, Dec:      00 13 14.2  +15 11  1.0   (J2000)
}
\keyword{ misc }
