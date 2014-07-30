\name{gal_uvw}
\alias{gal_uvw}

\title{
Calculate the Galactic space velocity (U,V,W) of a star 
}
\description{
Calculate the Galactic space velocity (U,V,W) of a star 
}
\usage{
gal_uvw(distance, lsr=F, ra, dec, pmra, pmdec, vrad, plx)
}

\arguments{
	\item{distance}{distance, scalar or vector, in parsecs}
	\item{lsr}{if =TRUE, then output velocities are corrected for solar motion}
	\item{ra}{Right Ascension, scalar or vector, in decimal degrees}
	\item{dec}{declination, scalar or vector, in decimal degrees}
	\item{pmra}{proper motion in R.A., scalar or vector, in milliarcseconds/yr}	
	\item{pmdec}{proper motion in declination, scalar or vector, in milliarcseconds/yr}
	\item{vrad}{radial velocity, scalar or vector, in km/s}
	\item{plx}{parallax, scalar or vector, in milliarcseconds}
	}
\details{
	Calculates the Galactic space velocity U, V, W of star given its 
coordinates, proper motion, distance (or parallax), and radial velocity.  ;      The calculation follows the general outline of Johnson & Soderblom (1987)
except that U is positive outward toward the Galactic anticenter, and the J2000 transformation matrix to Galactic coordinates is taken from  the introduction to the Hipparcos catalog.   

The \emph{distance} parameter should be zero if parallax \emph{plx} is provided.  If the user has proper motion in R.A. given in seconds of time/yr, mu_alpha, then it should first be converted to seconds of time/yr using \preformatted{pmra = 15*mu_alpha*cos(dec)}.  

If \emph{lsr}=TRUE, then output velocities are corrected to the local standard of rest (LSR) assuming a solar motion (U,V,W)_Sun = (-8.5, 13.38, 6.49) km/s, as given by Coskunoglu et al. 2011). Note that the value of the solar motion through the LSR remains poorly determined.
}
\value{
  \item{U}{velocity positive toward the Galactic anticenter, in km/s}
	\item{V}{velocity positive in the direction of Galactic rotation, in km/s}
	\item{W}{velocity positive toward the North Galactic Pole, in km/s}
}
\references{
Coskunoglu, B., Ak, S., Bilir, S., et al. 2011, Local stellar kinematics from the RAVE data. I. Local standard of rest, Mon. Not. Royal Astron. Soc., 412, 1237-1245. \url{http://adsabs.harvard.edu/abs/2011MNRAS.412.1237C}
	
Johnson, D. R. H. and Soderblom, D. R., 1987, Calculating galactic space velocities and their uncertainties, with an application to the Ursa Major group, Astron. J., 93, 864-867. \url{http://adsabs.harvard.edu/abs/1987AJ.....93..864J}
}
\author{
Written by W. Landsman,  December 2000
   
R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
#  Compute (U,V,W) for the halo star HD 6755 using measurments by the Hipparcos satellite
#  Result: u=141.2  v = -491.7  w = 93.9        ;km/s

gal_uvw(139, lsr=TRUE, ten(1,9,42.3)*15., ten(61,32,49.5), 628.42, 76.65, -321.4)
}
\keyword{ misc }
