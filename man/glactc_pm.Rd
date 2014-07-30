\name{glactc_pm}
\alias{glactc_pm}

\title{ Convert between celestial and Galactic (or Supergalactic) proper
motion and coordinates
}
\description{
Convert between celestial and Galactic (or Supergalactic) proper
motion and coordinates	
}
\usage{
glactc_pm(ra, dec, mu_ra, mu_dec, year, gl, gb, mu_gl, mu_gb, j, degree=FALSE, 
fk4 = FALSE, supergalactic = FALSE, mustar=FALSE)
}

\arguments{
\item{ra}{Right Ascension, in decimal hours (or decimal degrees if \emph{degree} is set), scalar or vector}
\item{dec}{declination, in decimal degrees, scalar or vector}
\item{mu_ra}{Right Ascension proper motion, in any proper motion unit (angle/time), scalar or vector}
\item{mu_dec}{declination proper motion, in any proper motion unit (angle/time), scalar or vector}
\item{year}{equinox of ra and dec, scalar}
\item{gl}{Galactic longitude, decimal degrees, scalar or vector}
\item{gb}{Galactic latitude, decimal degrees, scalar or vector}
\item{mu_gl}{Galactic longitude proper motion, in any proper motion unit (angle/time), scalar or vector}
\item{mu_gb}{Galactic latitude proper motion, in any proper motion unit (angle/time), scalar or vector}
\item{j}{integer indicator, direction of conversion \cr
	1:  ra,dec,mu_ra,mu_dec --> gl,gb,mu_gl,mu_gb \cr
	2:  gl,gb,mu_gl,mu_gb  --> ra,dec,mu_ra,mu_dec}
\item{degree}{if set, then the RA parameter (both input and output) is given in degrees rather than hours (default=FALSE)}
\item{fk4}{if set, then the celestial (RA, Dec) coordinates are assumed to be input/output in the FK4 system.  By default,  coordinates are assumed to be in the FK5 system.  (default=FALSE)}
\item{supergalactic}{if set, the function returns SuperGalactic coordinates (see details). (default=FALSE)}
\item{mustar}{see details (default=FALSE)}
	}
\details{
If \emph{j=1}, this function converts proper motion in equatorial coordinates (ra,dec) to proper motion in Galactic coordinates (gl, gb) or Supergalactic Coordinates  (sgl,sgb).  If \emph{j=2}, the conversion is reversed from Galactic/Supergalactic coordinates to equatorial coordinates.  The calculation includes precession on the coordinates, but does not take care of precession of the proper motions which is usually a very small effect.

For B1950 coordinates, set \emph{fk4=TRUE} and \emph{year=1950}.

If \emph{supergalactic=TRUE} is set, Supergalactic coordinates are defined by de Vaucouleurs et al. (1976) to account for the local supercluster. The North pole in Supergalactic coordinates has Galactic coordinates l = 47.47, b = 6.32, and the origin is at Galactic coordinates l = 137.37, b = 0.00.

If \emph{mustar=TRUE} is set, the input and output of mu_ra and mu_dec are the projections of mu in the ra or dec direction rather than the d(ra)/dt or d(mu)/dt.  So mu_ra becomes mu_ra*cos(dec) and mu_gl becomes mu_gl*cos(gb).

	}
\value{
	\item{ra}{Right Ascension, in decimal hours (or decimal degrees if \emph{degree} is set), scalar or vector}
\item{dec}{declination, in decimal degrees, scalar or vector}
\item{mu_ra}{Right Ascension proper motion, in any proper motion unit (angle/time), scalar or vector}
\item{mu_dec}{declination proper motion, in any proper motion unit (angle/time), scalar or vector}
\item{year}{equinox of ra and dec, scalar}
\item{gl}{Galactic longitude, decimal degrees, scalar or vector}
\item{gb}{Galactic latitude, decimal degrees, scalar or vector}
\item{mu_gl}{Galactic longitude proper motion, in any proper motion unit (angle/time), scalar or vector}
\item{mu_gb}{Galactic latitude proper motion, in any proper motion unit (angle/time), scalar or vector}
}
\author{
Written by Ed Shaya (Univ Maryland))2009.

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
	\code{\link{precess}}
	\code{\link{bprecess}}
	\code{\link{jprecess}}
}
\examples{
# Find the SuperGalactic proper motion of M33 given its
#  equatorial proper motion mu* =(-29.2, 45.2) microas/yr.
#  Here the (*) indicates ra component is actual mu_ra*cos(dec) 
#	(Position: RA (J2000): 01 33 50.9, Dec (J2000): 30 39 35.8)
# Result: SGL = 328.46732 deg, SGB = -0.089896901 deg
#			mu_sgl = 35.02 microarcsecond/yr, mu_sgb = 38.09 microarcsecond/yr.

glactc_pm(ten(1,33,50.9), ten(30,39,35.8), -29.2, 45.2, 2000, 
     gl, gb, mu_gl, mu_gb, 1)
}
\keyword{ misc }
