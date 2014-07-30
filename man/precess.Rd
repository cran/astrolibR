\name{precess}
\alias{precess}

\title{ Precess coordinates from EQUINOX1 to EQUINOX2
}
\description{
Precess coordinates from EQUINOX1 to EQUINOX2
}
\usage{
precess(ra, dec, equinox1, equinox2, fk4=F, radian=F)
}

\arguments{
\item{ra}{Right Ascension, in degrees, scalar or vector}
\item{dec}{declination, in degrees, scalar or vector}
\item{equinox1}{original equinox of coordinates, scalar}
\item{equinox2}{equinox of precessed coordinates}
\item{fk4}{if =TRUE, the FK4 (B1950.0) system will be used; otherwise FK5 (J2000.0) will be used (default = FALSE)}
\item{radian}{if =TRUE, the input and output RA and DEC vectors are in radians rather than degrees
(default = FALSE)}
}
\details{
The algorithm of this function is obtained from Taff (1983, p.24) for FK4. FK5 constants are 
obtained from "Astronomical Almanac Explanatory Supplement (1992), page 104, Table 3.211.1.

The accuracy of precession decreases for declination values near 90 
  degrees.  PRECESS should not be used more than 2.5 centuries from
  2000 on the FK5 system (1950.0 on the FK4 system).

The default (RA,DEC) system is  FK5 based on epoch J2000.0, but FK4 based on B1950.0 is available via 
 the /FK4 keyword.  Use BPRECESS and JPRECESS to convert between FK4 and FK5 systems
}
\value{
\item{ra}{precessed Right Ascension, in degrees, scalar or vector}
\item{dec}{precessed declination, in degrees, scalar or vector}
}
\references{
Taff, L. G., 1983, "Computational Spherical Astronomy", Krieger Publ.  
}
\author{
Written, Wayne Landsman, STI Corporation  1986

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{premat} \link{ten}}
}
\examples{

#  The Pole Star has J2000.0 coordinates (2h, 31m, 46.3s, 
#  89d 15' 50.6"); compute its coordinates at J1985.0
#  Result: 2h 16m 22.73s, 89d 11' 47.3"

precess(ten(2,31,46.3)*15, ten(89,15,50.6), 2000, 1985)


# Precess the B1950 coordinates of Eps Ind (RA = 21h 59m,33.053s,
# DEC = (-56d, 59', 33.053") to equinox B1975.

ra = ten(21, 59, 33.053)*15
dec = ten(-56, 59, 33.053)
precess(ra, dec , 1950, 1975, fk4=TRUE)
}
\keyword{ misc }
