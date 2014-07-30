\name{co_refract}
\alias{co_refract}

\title{
 Calculate correction to altitude due to atmospheric refraction
}
\description{
Calculate correction to altitude due to atmospheric refraction
}
\usage{
co_refract(a, altitude, pressure, temperature, to_observed, epsilon)
}

\arguments{
  \item{a}{observed (apparent) altitude, in degrees (scalar or vector)}
  \item{altitude}{height of the observing location, in meters. This is 
only used to determine an approximate temperature and pressure, 
if these are not specified separately. (default=0, i.e. sea level)}
  \item{pressure}{pressure at the observing location, in millibars (default = 1010)}
  \item{temperature}{temperature at the observation location, in Kelvin (default = 283)}
  \item{to_observed}{Flag to calculate  from Apparent->Observed altitude, 
                using the iterative technique (default = omitted gives a single
                estimate of the refraction correction)}
  \item{epsilon}{iteration accuracy (default = 0.25 arcseconds)}
}
\details{
Because the index of refraction of air is not precisely 1.0, the atmosphere
bends all incoming light, making a star or other celestial object appear at
a slightly different altitude (or elevation) than it really is.  It is 
important to understand the following definitions:

Observed Altitude:  The altitude that a star is SEEN to BE, with a telescope.
                  This is where it appears in the sky.  This is always 
                  GREATER than the apparent altitude.

Apparent Altitude:  The altitude that a star would be at, if *there were no
                atmosphere* (sometimes called "true" altitude). This is 
                usually calculated from an object's celestial coordinates.
                Apparent altitude is always LOWER than the observed 
                altitude.

Thus, for example, the Sun's apparent altitude when you see it right on the
horizon is actually -34 arcminutes.

This program uses couple simple formulae to estimate the effect for most 
optical and radio wavelengths.  Typically, you know your observed altitude 
(from an observation), and want the apparent altitude.  To go the other way,
this program uses an iterative approach.

WAVELENGTH DEPENDENCE:
 This correction is 0 at zenith, about 1 arcminute at 45 degrees, and 34 
 arcminutes at the horizon FOR OPTICAL WAVELENGTHS.  The correction is 
 NON-NEGLIGIBLE at all wavelengths, but is not very easily calculable.  
 These formulae assume a wavelength of 550 nm, and will be accurate to 
 about 4 arcseconds for all visible wavelengths, for elevations of 10 
 degrees and higher.    Amazingly, they are also ACCURATE FOR RADIO 
 FREQUENCIES LESS THAN ~ 100 GHz.

 It is important to understand that these formulae really can't do better 
 than about 30 arcseconds of accuracy very close to the horizon, as 
 variable atmospheric effects become very important.
}
\value{
  \item{aout}{observed (apparent) altitude, in degrees}
}
\references{	
Meeus, J., Astronomical Algorithms, Chapter 15.

Explanatory Supplement to the Astronomical Almanac, 1992.

Methods of Experimental Physics, Vol 12 Part B, Astrophysics, 
Radio Telescopes, Chapter 2.5, "Refraction Effects in the Neutral 
Atmosphere", by R.K. Crane.
}
\author{
Written Chris O'Dell

R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
	\code{\link{co_refract_forward}}
	\code{\link{co_aberration}}
}
\examples{
co_refract(0.5)
}
\keyword{ misc }

