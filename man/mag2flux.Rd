\name{mag2flux}
\alias{mag2flux}

\title{
 Convert from astronomical magnitudes to flux (ergs/s/cm^2/A)
}
\description{
 Convert from astronomical magnitudes to flux (ergs/s/cm^2/A) 
}
\usage{
mag2flux(mag, zero_pt=21.10, ABwave=F)
}
\arguments{
  \item{mag}{magnitude, scalar or vector}
  \item{zero_pt}{zero point level of the magnitude (default = 21.1)}
  \item{ABwave}{wavelength for conversion to Oke AB magnitudes, in Angstroms (optional)}
}
\details{
The default zero point of 21.1 mag is from Code et al. (1976).  It is ignored of the ABwave parameter is supplied.

If ABwave is not supplied, the routine returns magnitudes given by the expression
 
\code{mag <- -2.5*log10(flux) - zero_pt}.  
If ABwave is supplied, then the routine returns AB magnitudes from Oke and Gunn (1983) according to 

\code{abmag <- -2.5*log10(flux) - 5*log10(ABwave) - 2.406}. 

Use \emph{mag2flux} for conversions in the opposite direction.}
\value{
  \item{flux}{flux, in erg cm-2 s-1 A-1, scalar or vector}
	}
\references{
	Oke, J. B. and Gunn, J. E., 1983, Secondary standard stars for absolute spectrophotometry, Astrophysical Journal, 266, 713-717
}
\author{
Converted to IDL from Yeoman's Comet Ephemeris Generator, B. Pfarr, STX, 1988

R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
mag2flux(19.8)

ytext <- expression(Flux~~ (erg/s~cm^2~A))
plot(seq(2000,5000,length=100), flux2mag(seq(15, 20,length=100)), pch=20)

}
\keyword{ misc }
