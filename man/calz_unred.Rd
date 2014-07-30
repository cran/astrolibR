\name{calz_unred}
\alias{calz_unred}

\title{ Deredden a galaxy spectrum using the Calzetti et al. (2000) recipe
}
\description{
Deredden a galaxy spectrum using the Calzetti et al. (2000) recipe
}
\usage{
calz_unred(wave,flux,ebv,R_V)
}

\arguments{

  \item{wave}{wavelength in Angstroms, scalar or N-vector}
  \item{flux}{calibrated flux vector, scalar or N-vector}
  \item{ebv}{color excess E(B-V), scalar}
  \item{R_V}{ratio of total to selected extinction, defauly=4.05 (optional)}
}
\details{
	
Calzetti et al.  (2000) developed a recipe for dereddening 
the spectra of galaxies where massive stars dominate the radiation output,
valid between 0.12 to 2.2 microns.  Reddening values are extrapolated between
0.12 and 0.0912 microns. Calzetti et al. (2000) estimate R_V = 4.05 +/- 0.80 
from optical-IR observations of four starburst galaxies.

If a negative E(B-V) is supplied, then fluxes will be reddened rather than deredenned.
Note that the supplied color excess should be that derived for 
the stellar  continuum, \emph{ebv}(stars), which is related to the 
reddening derived from the gas, \emph{ebv}(gas), via the Balmer 
decrement by \emph{ebv(stars) = 0.44*ebv(gas)}.  

Output funred values will be zero outside the wavelength domain 0.0912 to 2.2 microns.
}
\value{
  \item{funred}{unreddened flux, scalar or N-vector.}
}
\references{

Calzetti, D., Armus, L., Bohlin, R. C., Kinney, A. L., Koorneef, J. & Storchi-Bergmann, T., The dust content and opacity of actively star-forming galaxies, Astrophysical Journal, 533, 682-695, 2000. \url{http://adsabs.harvard.edu/abs/2000ApJ...533..682C} 
}
\author{
Written   W. Landsman        Raytheon  ITSS   December, 2000

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{ \code{\link{ccm_unred}}
}
\examples{
w <- 1200 + seq(50, 2000, by=50)  # wavelength vector
f <- rep(1, length(w))   # flat initial spectrum
calz_unred(w, f, ebv=0.1)
}
\keyword{ misc }
