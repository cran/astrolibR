\name{imf}
\alias{imf}

\title{ Compute an N-component power-law logarithmic stellar initial mass function
}
\description{Compute an N-component power-law logarithmic stellar initial mass function	
}
\usage{
imf(mass, expon, mass_range)
}

\arguments{
\item{mass}{mass in units of solar masses, scalar or vector}
\item{expon}{power law exponent, usually negative, scalar or vector}
\item{mass_range}{vector containing the mass upper and lower limits of the 
           IMF and masses where the IMF exponent changes, in solar masses.   
           The number of values in mass_range should be one more than in 
           \emph{expon} and should be monotonically increasing.}
}
\details{
   The mass spectrum f(m) gives the number of stars per unit mass 
   interval is related to psi(m) by  m*f(m) = psi(m).  The `initial' mass
   function (IMF) refers to the mass spectrum before stellar evolution has
   reduced the number of higer mass stars. ` For background, see Scalo (1986).
    
The \emph{imf} function first calculates the constants to multiply the power-law 
   components such that the IMF is continuous at the intermediate masses, 
   and that the total mass integral is one solar mass. That is, the normalization
   condition is that the integral of psi(m) between the upper and lower
   mass limit is unity. The IMF is then calculated for the supplied masses.   

The number of values in \emph{expon} equals the number of different
power-law components in the IMF. A Saltpeter (1955) IMF has a scalar value of 
expon = -1.35.  

	}
\value{
\item{psi}{mass function, number of stars per unit logarithmic mass interval
           evaluated for supplied masses}
}
\references{
Salpeter, E. D., 1955, The luminosity function and stellar evolution, Astrophys. J. 121, 161 \url{http://adsabs.harvard.edu/abs/1955ApJ...121..161S}
	
Scalo, J., 1986, The stellar initial mass function, Fund. of Cosmic Physics, 11, 1-278 \url{http://adsabs.harvard.edu/abs/1986FCPh...11....1S}
   }
\author{
Written    W. Landsman              1989

R adaptation by Arnab Chakraborty  June 2013
}
\examples{

# Calculate the number of stars per unit mass interval at 3 Msun 
# for a Salpeter (expon = -1.35) IMF, with a mass range from 
# 0.1 MSun to 110 Msun.

imf(3, -1.35, c(0.1, 110) ) / 3

# Lequeux et al. (1981) describes an IMF with an
# exponent of -0.6 between 0.007 Msun and 1.8 Msun, and an
# exponent of -1.7 between 1.8 Msun and 110 Msun.  Plot
# the mass spectrum f(m)

m = seq(0.01,0.1,length=110)  # construct a mass vector
expon = c(-0.6, -1.7)         # exponent vector
mass_range = c(0.007, 1.8, 110)    # mass range
plot (log10(m), log10(imf(m, expon, mass_range) / m), pch=20)
}
\keyword{ misc }
