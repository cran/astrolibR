\name{precess_xyz}
\alias{precess_xyz}

\title{
Precess equatorial geocentric rectangular coordinates}
\description{
Precess equatorial geocentric rectangular coordinates
}
\usage{
precess_xyz(x, y, z, equinox1, equinox2)
}
\arguments{
  \item{x}{heliocentric rectangular coordinate, scalar or vector}
  \item{y}{heliocentric rectangular coordinate, scalar or vector}
  \item{z}{heliocentric rectangular coordinate, scalar or vector}
  \item{equinox1}{equinox of input coordinates, scalar}
  \item{equinox2}{equinox of output coordinates, scalar}
}
\details{
The equatorial geocentric rectangular coordinates are converted to (RA,Dec), precessed in the normal way, and then converted back to (x,y,z) using unit vectors.

The input (x,y,z) coordinates are changed upon return.
}
\value{
  \item{x}{precessed heliocentric rectangular coordinate, scalar or vector}
  \item{y}{precessed heliocentric rectangular coordinate, scalar or vector}
  \item{z}{precessed heliocentric rectangular coordinate, scalar or vector}
}
\author{
P. Plait ACC 1999

Arnab Chakraborty R adaptation 2013}
\examples{
precess(1.0, 1.0, 1.0, 2000, 2050)
}
\keyword{ misc }
