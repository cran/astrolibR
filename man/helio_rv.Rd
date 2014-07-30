\name{helio_rv}
\alias{helio_rv}

\title{Calculate the heliocentric radial velocity of a spectroscopic binary
}
\description{Calculate the heliocentric radial velocity of a spectroscopic binary	
}
\usage{
helio_rv(hjd, t, p, v0, k, e, omega, maxiter=100)
}

\arguments{
\item{hjd}{time of observation}
\item{t}{time of periastron passage (maximum positive velocity
            for circular orbits), same time system as hjd}
\item{p}{orbital period, same time system as hjd}
\item{v0}{systemic velocity}
\item{k}{velocity semi-amplitude, same units as v0}
\item{e}{orbital eccentricity (default=0.0)}
\item{omega}{longitude of periastron, in degrees (default=0.0, but must be specified for
            eccentric orbits}
\item{maxiter}{maximum number of iterations to achieve 1e-8 convergence}
	} 
\details{
The user should ensure consistency with time and velocity systems being
used (e.g. days and km/s).  Generally, users should reduce large time values by subtracting a large constant offset, which may improve numerical accuracy.
	}
\value{
\item{status}{Iterations needed for convergence}
\item{rv}{predicted heliocentric radial velocity for the date(s) specified by \emph{hjd}, same units as v0}
}
\author{
Written by  Pierre Maxted ()CUOBS) 1994

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
# What was the heliocentric radial velocity of the primary component of HU Tau
# at 1730 UT 25 Oct 1994?
# Result: -63.66 km/s

jd <- juldate(c(94,10,25,17,30))   #  obtain Geocentric julian date
hjd <- helio_jd(jd, ten(04,38,16)*15., ten(20,41,05)) #  convert to HJD
helio_rv(hjd, 46487.5303, 2.0563056, -6.0, 59.3)

# Plot two cycles of an eccentric orbit, e=0.6, omega=45 for both
# components of a binary star

phase <- seq(0.0,2.0,length=100)   #  generate 100 phase points
plot(phase, helio_rv(phase, 0, 1, 0, 100, 0.6, 45)$rv, ylim=c(-100,150), pch=20)
lines(phase, helio_rv(phase, 0, 1, 0, 50, 0.6, 45+180)$rv)
}
\keyword{ misc }
