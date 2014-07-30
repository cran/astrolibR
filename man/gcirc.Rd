\name{gcirc}
\alias{gcirc}

\title{Computes rigorous great circle arc distances between points on the celestial sphere}
\description{Computes rigorous great circle arc distances between points on the celestial sphere}

\usage{
gcirc(u,ra1,dc1,ra2,dc2)
}

\arguments{
\item{u}{indicator integer describing units of inputs and outputs: \cr
	0:  radians \cr
	1:  Right Ascension in decimal hours, declination in decimal degrees, angular distance in arc seconds \cr
	2:  Right Ascension and declination in decimal degrees, angular distance in arc seconds}
\item{ra1}{Right Ascension or longitude of point 1}
\item{dc1}{declination or latitude of point 1}
\item{ra2}{Right Ascension or longitude of point 2}
\item{dc2}{declination or latitude of point 2}
}
\details{
Input position can be in radians, sexigesimal (R.A., Dec), or decimal degrees. The procedure uses the Haversine forumla \url{http://en.wikipedia.org/wiki/Great-circle_distance}. The haversine formula can give rounding errors for antipodal points.

If (ra1,dc1) are scalars and (ra2,dc2) are vectors, then \emph{dis} is a vector giving the distance of each element of (ra2,dc2) to (ra1,dc1).  Similarly, if (ra1,dc1) are vectors and (ra2,dc2) are scalars, then \emph{dis} is a vector giving the distance of each element of (ra1,dc1) to (ra2,dc2). If both (ra1,dc1) and (ra2,dc2) are vectors then \emph{dis} is a vector giving the distance of each element of (ra1,dc1) to the corresponding element of (ra2,dc2). If the input vectors are not the same length, then excess elements of the longer ones will be ignored.

The \pkg{astrolib} function \emph{sphdist} provides an alternate method of computing
a spherical distance.

}
\value{
	\item{dis}{angular distance on the sky between points 1 and 2}
}
\author{
Written in Fortran by R. Hill,  SASC Technologies, January 1986

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
	\code{\link{sphdist}}
}
\examples{
gcirc(2, 100., -35., 180., +35)
}
\keyword{ misc }
