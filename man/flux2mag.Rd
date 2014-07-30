\name{flux2mag}
\alias{flux2mag}

\title{
 Convert from flux (ergs/s/cm^2/A) to astronomical magnitudes
}
\description{
 Convert from flux (ergs/s/cm^2/A) to astronomical magnitudes
}
\usage{
flux2mag(flux, zero_pt=21.10, ABwave)
}
\arguments{
  \item{flux}{flux, in erg cm-2 s-1 A-1, scalar or vector}
  \item{zero_pt}{zero point level of the magnitude (default = 21.1)}
  \item{ABwave}{wavelength for conversion to Oke AB magnitudes, in Angstroms (optional)}
}
\details{
The default zero point of 21.1 mag is from Code et al. (1976).  It is ignored of the ABwave parameter is supplied.

If ABwave is not supplied, the routine returns magnitudes given by the expression 

\code{mag <- -2.5*log10(flux) - zero_pt}.  

If ABwave is supplied, then the routine returns AB magnitudes from Oke and Gunn (1983) according to \code{abmag <- -2.5*log10(flux) - 5*log10(ABwave) - 2.406}. 

Use \emph{mag2flux} for conversions in the opposite direction.}
\value{
  \item{mag}{magnitude, scalar or vector}
}
\references{
	Oke, J. B. and Gunn, J. E., 1983, Secondary standard stars for absolute spectrophotometry, Astrophysical Journal, 266, 713-717
}
\author{
Converted to IDL from Yeoman's Comet Ephemeris Generator, B. Pfarr, STX, 1988

R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
flux2mag(3e-17)   #  returns 20.21

ytext <- expression(Flux~~ (erg/s~cm^2~A))
plot(seq(2000,5000,length=100), flux2mag(seq(3e-17,3e-16,length=100)), pch=20)

}
\keyword{ misc }
