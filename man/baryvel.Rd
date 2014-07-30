\name{baryvel}
\alias{baryvel}

\title{ Calculates heliocentric and barycentric velocity components of Earth
}
\description{
Calculates heliocentric and barycentric velocity components of Earth
}
\usage{
baryvel(dje,deq)
}

\arguments{

  \item{dje}{Julian ephemeris date (scalar)}
  \item{deq}{epoch of mean equinox of dvelh and dvelb (scalar). If deq=0, then deq is assumed to be equal to dje.}
  
}
\details{
The 3-vectors DVELH and DVELB are given in a right-handed coordinate 
system with the +X axis toward the Vernal Equinox, and +Z axis 
toward the celestial pole. 

The projected velocity towards the celestial object can be computed from:
v = dvelb[1]*cos(dec)*cos(ra) + dvelb[2]*cos(dec)*sin(ra) + dvelb[3]*sin(dec) 

The algorithm here is taken from FORTRAN program of Stumpff (1980).
Stumpf claimed an accuracy of 42 cm/s for the velocity.    A 
comparison with the JPL FORTRAN planetary ephemeris program PLEPH
found agreement to within about 65 cm/s between 1986 and 1994.
The option in IDL astrolib's baryvel.pro to
use the full JPL ephemeris is not implemented in R.   
}
\value{
  \item{dvelh}{heliocentric velocity components (3 element vector) in km/s}
  \item{dvelb}{barycentric velocity components (3 element vector) in km/s}
}
\references{
	Two Self-Consistent FORTRAN Subroutines for the Computation of the Earth's Motion, P. Stumpff, Astronomy & Astrophysics Supplement, 41, 1, 1980. }
\author{
Jeff Valenti,  U.C. Berkeley    Translated BARVEL.FOR to IDL \cr
R adaptation by Arnab Chakraborty  June 2013
}
\examples{
baryvel(2456469.5, 0)
}
\keyword{ misc }
 