\name{glactc}
\alias{glactc} 

\title{ Convert between celestial and Galactic (or Supergalactic) coordinates
}
\description{
Convert between celestial and Galactic (or Supergalactic) coordinates	
}
\usage{
glactc(ra, dec, year, gl, gb, j, degree=FALSE, fk4 = FALSE, supergalactic = FALSE)
}

\arguments{
\item{ra}{Right Ascension (j=1) or Galactic longitude (j=2), in decimal hours or degrees, scalar or vector}
\item{dec}{Declination (j=1) or Galactic latitude (j=2), in degrees, scalar or vector}
\item{year}{equinox of ra and dec, scalar}
\item{gl}{Galactic longitude or Right Ascension, in degrees, scalar or vector}
\item{gb}{Galactic latitude or Declination, in degrees, scalar or vector}
\item{j}{integer indicator, direction of conversion \cr
	1:  ra,dec --> gl,gb  \cr
	2:  gl,gb  --> ra,dec}
\item{degree}{if set, then the RA parameter (both input and output) is given in degrees rather than hours (default=FALSE)}
\item{fk4}{if set, then the celestial (RA, Dec) coordinates are assumed to be input/output in the FK4 system.  By default,  coordinates are assumed to be in the FK5 system.  (default=FALSE)}
\item{supergalactic}{if set, the function returns SuperGalactic coordinates (see details). (default=FALSE)}
	}
\details{
If \emph{j=1}, this function converts proper motion in equatorial coordinates (ra,dec) to proper motion in Galactic coordinates (gl, gb) or Supergalactic Coordinates  (sgl,sgb).  If \emph{j=2}, the conversion is reversed from Galactic/Supergalactic coordinates to equatorial coordinates.  The calculation includes precession on the coordinates.

For B1950 coordinates, set \emph{fk4=TRUE} and \emph{year=1950}.

If \emph{supergalactic=TRUE} is set, Supergalactic coordinates are defined by de Vaucouleurs et al. (1976) to account for the local supercluster. The North pole in Supergalactic coordinates has Galactic coordinates l = 47.47, b = 6.32, and the origin is at Galactic coordinates l = 137.37, b = 0.00.
	}
\value{
	\item{ra}{Galactic longitude (j=1) or Right Ascension (j=2), in decimal hours or degrees, scalar or vector}
\item{dec}{Galactic latitude (j=1) or Declination (j=2), in degrees, scalar or vector}
}
\author{
FORTRAN subroutine by T. A. Nagy, 1978.  Conversion to IDL, R. S. Hill, STX, 1987.

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
	\code{\link{precess}}	
	\code{\link{jprecess}}	
	\code{\link{bprecess}}
}
\examples{
# Find the Galactic coordinates of Altair (RA (J2000): 19 50 47 Dec (J2000): 08 52 06)
# Result: gl = 47.74, gb = -8.91

glactc(ten(19,50,47), ten(8,52,6), 2000, gl, gb, 1)
}
\keyword{ misc }
