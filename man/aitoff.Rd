\name{aitoff}
\alias{aitoff}

\title{ Convert longitude, latitude to X,Y using an AITOFF projection
}
\description{
Convert longitude, latitude to X,Y using an AITOFF projection
}
\usage{
aitoff(l,b)
}

\arguments{
  \item{l}{longitude, scalar or vector, in degrees}
  \item{b}{latitude, scalar or vector (same length as l), in degrees}
}
\details{
This procedure can be used to create an all-sky map in Galactic 
coordinates with an equal-area Aitoff projection.  Output map 
coordinates are zero longitude centered. See AIPS memo No. 46, page 4, 
for details of the algorithm.  This
version of AITOFF assumes the projection is centered at b=0 degrees.

Several polar equal-area map projections are provided by the CRAN package \emph{mapproj}.
}
\value{
  \item{x}{x coordinate in range -180 to +180, same length as l.}
  \item{yx}{y coordinate in range -90 to +90, same length as l.}
}
\references{
Additional Non-linear Coordinates in AIPS, Eric W. Greisen, AIPS Memo 46, 1993 
\url{ftp://ftp.aoc.nrao.edu/pub/software/aips/TEXT/PUBL/AIPSMEMO46.PS}.
}
\author{
Written  W.B. Landsman  STX          December 1989 \cr

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
aitoff(227.23,-8.890)  #  celestial location of Sirius in Galactic coordinates
}
\keyword{ misc }
