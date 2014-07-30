\name{premat}
\alias{premat}

\title{ Return the precession matrix needed to go from EQUINOX1 to EQUINOX2
}
\description{Return the precession matrix needed to go from EQUINOX1 to EQUINOX2
}
\usage{
premat(equinox1, equinox2, fk4=F)
}
\arguments{
\item{equinox1}{original equinox of coordinates, scalar}
\item{equinox2}{equinox of precessed coordinates}
\item{fk4}{if =TRUE, the FK4 (B1950.0) system will be used; otherwise FK5 (J2000.0) will be used (default = FALSE)}
	}
\details{
This matrix is used by the functions \emph{precess} and \emph{baryvel} to precess astronomical coordinates.  The algorithm of this function is obtained from Taff (1983, p.24) for FK4. FK5 constants are obtained from "Astronomical Almanac Explanatory Supplement (1992), page 104, Table 3.211.1.

	}
\value{
\item{matrix}{3 x 3 precession matrix, used to precess equatorial rectangular coordinates}
}
\references{
Taff, L. G., 1983, "Computational Spherical Astronomy", Krieger Publ.  
}
\author{
Written, Wayne Landsman, HSTX Corporation, 1994

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{baryvel}}
\code{\link{precess}}
}
\examples{
#  Return the precession matrix from 1950.0 to 1975.0 in the FK4 system

premat(1950.0, 1975.0, fk4=TRUE)
}
\keyword{ misc }
