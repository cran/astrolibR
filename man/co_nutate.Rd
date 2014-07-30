\name{co_nutate}
\alias{co_nutate}

\title{
 Calculate changes in right ascension and declination due to nutation of the Earth's rotation
}
\description{
Calculate changes in right ascension and declination due to nutation of the Earth's rotation
}
\usage{
co_nutate(jd, ra, dec)
}

\arguments{
  \item{jd}{Julian Date [scalar or vector]}
  \item{ra}{right ascension, in degrees (scalar or N-vector)}
  \item{dec}{declination, in degrees (scalar or N-vector)}
}
\details{
Calculates necessary changes to right ascension and declination due to
the nutation of the Earth's rotation axis, as described in Meeus (1991), Chap 23.
Uses formulae from the Astronomical Almanac (1984) and does the calculations
in equatorial rectangular coordinates to avoid singularities at the
celestial poles.}
\value{
  \item{d_ra}{corrections to ra due to aberration, in arcseconds (must then
                    be added to ra to get corrected values).}
  \item{d_dec}{corrections to dec due to aberration, in arcseconds (must then
                     be added to dec to get corrected values).}
  \item{eps}{true obliquity of the ecliptic, in radians}
  \item{d_psi}{nutation of the longitude of the ecliptic}
  \item{d_eps}{nutation in the obliquity of the ecliptic}
}
\references{
Meeus, J., Astronomical Algorithms, Willmann-Bell, 1991
}
\author{
Written Chris O'Dell (2002)

   R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
\code{\link{nutate}}
}
\examples{
co_nutate(2456469.5,253.215,-32.449)
}
\keyword{ misc }

