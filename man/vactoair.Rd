\name{vactoair}
\alias{vactoair}

\title{ Convert vacuum wavelengths to air wavelengths
}
\description{	Convert vacuum wavelengths to air wavelengths
}
\usage{
vactoair(wave_vac)
}
\arguments{
\item{wave_vac}{vacuum wavelength, in Angstroms, scalar or vector}
	}
\details{
Corrects for the index of refraction of air under standard conditions.  
Wavelength values below 2000 A will not be altered. Method from Ciddor (1996).  Accurate to about 10 m/s.
	}
\value{
\item{wave_air}{air wavelength, in Angstroms, scalar -r vector}
}
\references{
Ciddor, P. E. 1996, Refractive index of air: New equations for the visible and near infrared,  Applied Optics, 35, 1566. \url{http://adsabs.harvard.edu/abs/1996ApOpt..35.1566C}
}
\author{
Written by D. Lindler 1982

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
	\code{\link{airtovac}}
}
\examples{

vactoair(2000.000)   # yields air wavelength 1999.353 Angstroms
}
\keyword{ misc }
