\name{helio}
\alias{helio}

\title{ Compute (low-precision) heliocentric coordinates for the planets
}
\description{Compute (low-precision) heliocentric coordinates for the planets
}
\usage{
helio(jd, list1, radian=FALSE)
}

\arguments{
\item{jd}{Julian date, scalar or vector}
\item{list1}{List of planets array.  May be a single number. 1 = merc, 2 = venus, ... 9 = pluto}
\item{radian}{If =TRUE, then the output longitude and latitude are given in radians. If =FALSE, the output are in degrees. (default=FALSE)}
	}
\details{
 The mean orbital elements for epoch J2000 are used.   These are derived
 from a 250 yr least squares fit of the DE 200 planetary ephemeris to a 
 Keplerian orbit where each element is allowed to vary linearly with 
 time.  For dates between 1800 and 2050, this solution fits the 
 terrestrial planet orbits to ~25" or better, but achieves only ~600" 
 precision for Saturn.   

These output arrays are dimensioned Nplanet x Ndate, where Nplanet is the number of elements of \emph{list1}, and Ndate is the number of elements of J\emph{jd}.

 Use \emph{planet_coords} (which calls \emph{helio}) to get celestial (RA, Dec)
 coordinates of the planets
	}
\value{
\item{hrad}{array of heliocentric radii, in Astronomical Units}
\item{hlong}{array of heliocentric (ecliptic) longitudes, in degrees or radians}
\item{hlat}{array of heliocentric latitudes, in degrees or radians}
}
\author{
	R. Sterner 1986 and W. Landsman 2000

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{cirrange}}
}
\examples{
# (1) Find the current heliocentric positions of all the planets

jd_today <- 2456877.5
helio(jd_today,seq(1,9))

# (2) Find heliocentric position of Mars on August 23, 2000 
# Result: hrad = 1.6407 AU hlong = 124.3197 hlat = 1.7853
# For comparison, the JPL ephemeris gives hrad = 1.6407 AU hlong = 124.2985 hlat = 1.7845
helio(2451779.5,4)
}
\keyword{ misc }
