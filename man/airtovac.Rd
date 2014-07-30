\name{airtovac}
\alias{airtovac}

\title{ Convert air wavelengths to vacuum wavelengths
}
\description{
Convert air wavelengths to vacuum wavelengths
}
\usage{
airtovac(wave_air)
}

\arguments{

  \item{wave_air}{wavelength in Angstroms, scalar or vector
}
}
\details{
Wavelengths are corrected for the index of refraction of air under 
standard conditions.  Wavelength values below 2000 A will not be 
altered.  Take care within 1 A of 2000 A.  Uses relation of Ciddor (1996).
}
\value{
  \item{wave_vac}{Vacuum wavelength in Angstroms, same number of elements as wave_air}
}
\references{
Ciddor 1996, Applied Optics 62, 958 \url{http://adsabs.harvard.edu/abs/1996ApOpt..35.1566C}
}
\author{
Written W. Landsman                November 1991

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{vactoair}}
}
\examples{
airtovac(4861.363)	#  H beta line wavelength in air
}
\keyword{ misc }
