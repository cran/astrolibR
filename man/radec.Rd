\name{radec}
\alias{radec}

\title{ Convert Right Ascension and declination from decimal to sexigesimal units
}
\description{	Convert Right Ascension and declination from decimal to sexigesimal units
}
\usage{
radec(ra, dec, hours=F)
}
\arguments{
\item{ra}{Right Ascension, in degrees, scalar or vector}
\item{dec}{declination, in degrees, scalar or vector} 
\item{hours}{if =TRUE, then the input right ascension should be specified in decimal hours instead of degrees (default = FALSE)}
	}
\details{
The conversion is to sexigesimal hours for RA,  and sexigesimal degrees for declination.
	}
\value{A \emph{list} with components:
\item{ihr}{Right Ascension hours, integer scalar or vector}
\item{imin}{Right Ascension minutes, integer scalar or vector}
\item{xsec}{Right Ascension seconds, real scalar or vector}
\item{ideg}{declination degrees, integer scalar or vector} 
\item{imn}{declination degrees, integer scalar or vector}
\item{xsc}{declination degrees, real scalar or vector}
}
\author{
Written by B. Pfarr, STX, 1987

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
radec(10.592, -82.663)
}
\keyword{ misc }
