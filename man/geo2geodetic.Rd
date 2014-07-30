\name{geo2geodetic}
\alias{geo2geodetic}

\title{Convert from geographic/planetographic to geodetic coordinates
}
\description{Convert from geographic/planetographic to geodetic coordinates
}
\usage{
geo2geodetic(gcoord, planet, equatorial_radius, polar_radius)
}
\arguments{
	\item{gcoord}{a 3-element vector of geographic coordinates [latitude, longitude, altitude], or an array [3,n] of n such coordinates}
	\item{planet}{keyword or integer specifying planet (see details, default = earth)}
	\item{equatorial_radius}{equatorial radius of chosen planet, in km. If not set, the \emph{planet} value is used.}
	\item{polar_radius}{polar radius of chosen planet, in km. If not set, the \emph{planet} value is used.}
}
\details{
Converts from geographic (latitude, longitude, altitude) to geodetic (latitude, longitude, altitude).  In geographic coordinates, the Earth is assumed a perfect sphere with a radius equal to its equatorial radius. The geodetic (or ellipsoidal) coordinate system takes into account the Earth's oblateness.  The method is from Keeper and Nievergelt (1998) with planetary constants from Allen (2000).

Geographic and geodetic longitudes are identical. Geodetic latitude is the angle between local zenith and the equatorial plane. Geographic and geodetic altitudes are both the closest distance between the satellite and the ground.

The \emph{planet} input is either as an integer (1-9) or one of the (case-independent) strings 'mercury','venus','earth', 'mars', 'jupiter', 'saturn', 'uranus', 'neptune', or 'pluto'. 

The \emph{equitorial_radius} and \emph{polar_radius} inputs allow the   transformation for any ellipsoid.

Whereas the conversion from geodetic to geographic coordinates is given by an exact, analytical formula, the conversion from geographic to geodetic is not. Approximative iterations (as used here) exist, but tend to become less accurate with increasing eccentricity and altitude. The formula used in this routine should give correct results within six digits for all spatial locations, for an ellipsoid (planet) with an eccentricity similar to or less than Earth's.  More accurate results can be obtained via calculus, needing a non-determined amount of iterations.
}
\references{
Allen (ed.) 2000, "Astrophysical Quantities", 4th ed.

Keeler, S. P. and Nievergelt, Y., 1998, Computing geodetic coordinates", SIAM Rev., 40, 300-309. 
}
\author{
Written by Pascal Saint-Hilaire (ETH) and Robert L. Marcialis (LPL), 2002

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{ct2lst}}
}
\examples{
# Locate the geographic North pole for Earth, altitude 0., in geodetic coordinates
# Returns: 90.000000       0.0000000       21.385000
geo2geodetic(c(90.0,0.0,0.0) )

# As above, but for the case of Mars
# Returns:  90.000000       0.0000000       18.235500
geo2geodetic(c(90.0,0.0,0.0), 'mars') 
}
\keyword{ misc }
