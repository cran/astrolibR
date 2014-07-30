\name{geodetic2geo}
\alias{geodetic2geo}

\title{Convert from geodetic (or planetodetic) to geographic coordinates
}
\description{Convert from geodetic (or planetodetic) to geographic coordinates
}
\usage{
geodetic2geo(ecoord, planet, equatorial_radius, polar_radius)}
\arguments{
	\item{ecoord}{a 3-element array of geodetic [latitude,longitude,altitude], or an array [3,n] of n such coordinates.}
	\item{planet}{keyword or integer specifying planet (see details, default = earth)}
	\item{equatorial_radius}{equatorial radius of chosen planet, in km. If not set, the \emph{planet} value is used.}
	\item{polar_radius}{polar radius of chosen planet, in km. If not set, the \emph{planet} value is used.}
}
\details{
Converts from geodetic (latitude, longitude, altitude) to geographic (latitude, longitude, altitude) coordinates.  In geographic coordinates, the Earth is assumed a perfect sphere with a radius equal to its equatorial radius. The geodetic (or ellipsoidal) coordinate system takes into account the Earth's oblateness.  The method is from Keeper and Nievergelt (1998) with planetary constants from Allen (2000).

Geographic and geodetic longitudes are identical. Geodetic latitude is the angle between local zenith and the equatorial plane. Geographic and geodetic altitudes are both the closest distance between the satellite and the ground.

The \emph{planet} input is either as an integer (1-9) or one of the (case-independent) strings 'mercury','venus','earth', 'mars', 'jupiter', 'saturn', 'uranus', 'neptune', or 'pluto'. 

The \emph{equitorial_radius} and \emph{polar_radius} inputs allow the   transformation for any ellipsoid.

Whereas the conversion from geodetic to geographic coordinates is given by an exact, analytical formula, the conversion from geographic to geodetic is not. Approximative iterations (as used here) exist, but tend to become less accurate with increasing eccentricity and altitude. The formula used in this routine should give correct results within six digits for all spatial locations, for an ellipsoid (planet) with an eccentricity similar to or less than Earth's.  More accurate results can be obtained via calculus, needing a non-determined amount of iterations.
}
\value{
\item{gcoord}{a 3-element vector of geographic coordinates [latitude, longitude, altitude], or an array [3,n] of n such coordinates}
}
\author{
Written by Pascal Saint-Hilaire (ETH) on 2002

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
# Convert North Pole, zero altitude, to geographic coordinates
# Results: 90.000000       0.0000000      -21.385000
geodetic2geo(c(90,0,0))

# Same calculation but for Mars
# Results: 90.000000       0.0000000      -18.235500
geodetic2geo(c(90,0,0),'mars')
}
\keyword{ misc }
