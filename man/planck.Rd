\name{planck}
\alias{planck}

\title{ Calculate the Planck function in units of ergs/cm2/s/A
}
\description{	Calculate the Planck function in units of ergs/cm2/s/A
}
\usage{
planck (wave,temp)
}

\arguments{
\item{wave}{wavelength(s) at which the Planck function is to be evaluated, in Angstroms, scalar or vectxor}
\item{temp}{temperature of the Planck function, in degree K, scalar}
	}
\details{
In this function, the wavelength data are converted to centimeters, and the Planck function
   is calculated for each wavelength point. See Allen (1973, sec 44) for more information.
    
 If a star with a blackbody spectrum has a radius R and distance d, then the flux at Earth in erg/cm^2/s/A will be bbflux*R^2/d^2.
	}
\value{
\item{bbflux}{blackbody flux (i.e. pi*Intensity) at the specified wavelengths, in erg/cm^2/s/A}
}
\references{
Allen, C. W., "Astrophysical Quantities", Athlone Press, 3rd ed. \url{http://adsabs.harvard.edu/abs/1973asqu.book.....A}
}
\author{
Adapted from the IUE RDAF  1989

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
#   Calculate the blackbody flux at 30,000 K every 100 Angstroms between 2000A and 4000A

wave = 2000 + seq(0,2000,by=100)
plot(wave, planck(wave,30000), lty=1, lwd=2)
}
\keyword{ misc }
