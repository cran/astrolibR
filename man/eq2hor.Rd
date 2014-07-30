\name{eq2hor}
\alias{eq2hor}

\title{
 Convert celestial  (ra-dec) coords to local horizon coords (alt-az)
}
\description{
Convert celestial  (ra-dec) coords to local horizon coords (alt-az)
}
\usage{
eq2hor(ra, dec, jd, lat, lon, ws, obsname, b1950, precess_, nutate_, refract_, 
       aberration_, altitude, ...)
}

\arguments{
	  \item{ra}{Right Ascension of object  (J2000), in degrees (FK5), scalar or vector}
  \item{dec}{declination of object (J2000), in degrees (FK5), scalar or vector}
  \item{jd}{Julian Date, scalar or vector}
	\item{lat}{north geodetic latitude of location, in degrees (default = 43.0783)}
	\item{lon}{east longitude of location, in degrees.  Specify west longitude with a negative sign. (default = -89.865)}
	\item{ws}{set to TRUE for azimuth measured westward from south, rather than East of North. (default = FALSE)}
	\item{obsname}{set this to a valid observatory name to be used by the astrolib OBSERVATORY procedure, which will return the latitude
 and longitude to be used by this program. (default = NULL)}
	\item{b1950}{set to TRUE if ra and dec are specified in B1950 FK4 coordinates, instead of J2000 FK5. (default = FALSE)}
	\item{precess_}{set to 1 to force precession, 0 for no precession correction. (default = 1)}
	\item{nutate_}{set to 1 to force nutation, 0 for no nutation. (default = 1)}
	\item{refract_}{set to 1 to force refraction correction, 0 for no correction. (default = 1)}
		\item{aberration_}{set to 1 to force aberration correction, 0 for no correction. (default = 1)}
	\item{altitude}{altitude of the observing location, in meters. (default=0)}
	\item{...}{may include setting temperature and pressure explicitly used by astrolib co_refract to calculate the refraction effect of the atmosphere.}
}
\details{
Calculates horizon (alt,az) coordinates from equatorial (ra,dec) coords.   It is typically accurate to about 1 arcsecond or better (checked against the publicly available XEPHEM software). It performs precession, nutation, aberration, and refraction corrections. Array inputs are permitted (except lat, lon, and altitude). 

If RA and DEC are arrays, then alt and az will also be arrays. If RA and DEC are arrays, JD may be a scalar OR an array of the same dimensionality.

The code has the following steps:  (a) Apply refraction correction to find apparent Alt.  (b) Calculate Local Mean Sidereal Time.  (c) Calculate Local Apparent Sidereal Time.  (d) Spherical trigonometry to find apparent hour angle, declination. (e) Calculate Right Ascension from hour angle and local sidereal time. (f) Nutation Correction to Ra-Dec. (g) Aberration correction to Ra-Dec. (h) Precess Ra-Dec to current equinox.

The following corrections are not made: (i) Deflection of Light by the sun due to General Relativity (typically milliarcseconds, but can be arseconds within one degree of the sun). (j) Effect of annual parallax (typically < 1 arcsecond).  (k) Improved refraction correction with wavelength dependence and integration through the atmosphere). (l) Topocentric parallax correction accounting for elevation of the observatory. (m) Proper motion. (n) Difference between UTC and UT1 in determining LAST. (o) Polar motion.  (p) Improved connection to Julian Date Calculator.
}
\value{
	\item{alt}{altitude, in degrees}
	\item{az}{azimuth angle measured EAST from NORTH (but see input ws above), in degrees}
	\item{ha}{hour angle (optional), in degrees}
}
\author{
Written Chris O'Dell, Univ. of Wisconsin-Madison

R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
\code{\link{nutate}}
\code{\link{precess}}
\code{\link{sunpos}}
\code{\link{co_nutate}}
\code{\link{co_aberration}}
\code{\link{co_refract}}
\code{\link{altaz2hadec}}
\code{\link{hadec2altaz}}
}
\examples{
# Find the position of the open cluster NGC 2264 at the Effelsburg Radio
# Telescope in Germany, on June 11, 2023, at local time 22:00 (METDST).
# The inputs will then be:
#   Julian Date = 2460107.250
#   Latitude = 50d 31m 36s
#   Longitude = 06h 51m 18s
#   Altitude = 369 meters
#   RA (J2000) = 06h 40m 58.2s
#   Dec(J2000) = 09d 53m 44.0s

eq2hor(ten(6,40,58.2)*15., ten(9,53,44), 2460107.250, 
       lat=ten(50,31,36), lon=ten(6,51,18), altitude=369.0, 
       pres=980.0, temp=283.0)

# Output expected: 
# Az = 17 42 25.6  
# El = +16 28 22.8
# Hour Angle = +05 04 27.6 
}
\keyword{ misc }

