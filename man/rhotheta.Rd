\name{rhotheta}
\alias{rhotheta}

\title{ Calculate the separation and position angle of a binary star
}
\description{
Calculate the separation and position angle of a binary star
}
\usage{
rhotheta(p, t, e, a, i, omega, omega2, t2)
}

\arguments{
\item{p}{period (scalar, year)}
\item{t}{time of periastron passage (scalar, year)}
\item{e}{orbit eccentricity (scalar between 0 and 1)}
\item{a}{semi-major axis (scalar, arc second)}
\item{i}{scalar, inclination}
\item{omega}{node (scalar, degree)}
\item{omega2}{longitude of periastron (scalar, degree)}
\item{t2}{epoch of observation (scalar, year)}
}
\details{
This function will return the separation rho and position angle
theta of a visual binary star derived from its orbital elements.
The algorithm is from Meuss (1992; also 1998).
}
\value{
An R list with two scalar elements: \\
\item{rho}{separation (arcsec)}
\item{theta}{position angle measured east of north (degree)}
In case of errors, rho and theta are returned as -1.
}
\references{
Meeus J., 1992, Astronomische Algorithmen, Barth.
Meeus, J., 1998,  ``Astronomical Algorithms'', 2nd ed.
}
\author{
Written,    Sebastian Kohl, 2012.  

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
#  Find the position of Eta Coronae Borealis at the epoch 1980.0
#  Result:   rho=     0.411014    theta=       318.42307
rhotheta(41.623, 1934.008, 0.2763, 0.907, 59.025, 23.717, 219.907, 1980.0)
}
\keyword{ misc }
