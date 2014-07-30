\name{eqpole}
\alias{eqpole}

\title{
Convert Right Ascension and declination to X,Y using an equal-area polar projection 
}
\description{
Convert Right Ascension and declination to X,Y using an equal-area polar projection 
}
\usage{
eqpole(l, b, southpole)
}
\arguments{
	\item{l}{longitude, in degrees, scalar or vector}
	\item{b}{latitude, in degrees, same number of elements as longitude}
	\item{southpole}{Set to TRUE if plot is centered on the south pole instead of the north pole (optional, default = FALSE)}
}
\details{
The output X and Y coordinates are scaled to be between
-90 and +90 to go from equator to pole to equator. Output map points 
can be centered on the north pole or south pole.

Several polar equal-area map projections are provided by the CRAN package \emph{mapproj}.
}
\value{
  \item{X}{X coordinate, ranging from -90 to +90, same number of elements as longitude, in degrees}
	\item{Y}{Y coordinate, ranging from -90 to +90, same number of elements as longitude, in degrees}
}
\author{
Written by J. Bloch        LANL, SST-9     1.1     5/16/91

   R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
eqpole(100, -20.)
}
\keyword{ misc }

