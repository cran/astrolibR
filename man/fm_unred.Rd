\name{fm_unred}
\alias{fm_unred}

\title{ Deredden a flux vector using the Fitzpatrick (1999) parameterization
}
\description{
Deredden a flux vector using the Fitzpatrick (1999) parameterization
}
\usage{
fm_unred(wave, flux, ebv, r_v = 3.1, avglmc=FALSE, lmc2=FALSE, x0=NULL,  
gamma=NULL, c4=NULL, c3=NULL, c2=NULL, c1=NULL)
}

\arguments{
  \item{wave}{wavelength in Angstroms, scalar or N-vector}
  \item{flux}{calibrated flux vector, scalar or N-vector}
  \item{ebv}{color excess E(B-V), scalar}
  \item{r_v}{ratio of total to selected extinction, (optional, default=3.1} 
  \item{avglmc}{if set to TRUE, then the default fit parameters (c1,c2,c3,c4,gamma,x0) are set to the average values determined for reddening in the general Large Magellanic Cloud (LMC) field by Misselt et al. (1999), (optional)}
  \item{lmc2}{if set to TRUE, then the fit parameters are set to the values determined for the LMC2 field (including 30 Dor) by Misselt et al. Note that neither /AVGLMC or /LMC2 will alter the default value of R_V which is poorly known for the LMC.}
  \item{x0}{Centroid of 2200 A bump in microns (optional, default = 4.596)}
  \item{gamma}{Width of 2200 A bump in microns (optional, default = 0.99)}
  \item{c4}{FUV curvature (optional, default = 0.41)}
  \item{c3}{Strength of the 2200 A bump (optional, default = 3.23)}
  \item{c2}{Slope of the linear UV extinction component (optional, default = -0.824 + 4.717/R)} 
  \item{c1}{Intercept of the linear UV extinction component (optional, default = 2.030 - 3.007*c2)}
}
\details{
	
The Galactic extinction curve is given by Fitzpatrick & Massa  (FM, 1999). Parameterization is valid from the infrared to the far-ultraviolet (3.5 microns to 0.1 microns).  The ultraviolet extinction curve is extrapolated down to 912 Angstroms. Many sightlines with peculiar ultraviolet interstellar extinction  can be represented with the FM curve, if the proper value of R(V) is supplied.

When the inputs omit extinction curve parameters (x0, gamma, c4, c3, c2, and c1) then the default extinction curve is adopted from Clayton et al. (2003).

The parameter \emph{R_V} specifies the ratio of total to selective extinction, \code{R(V) = A(V) / E(B - V)}.  Extreme values of R(V) range from 2.3 to 5.3, and the default is 3.1.  

If a negative \emph{ebv} is supplied, then fluxes will be reddened rather than dereddened.

The following comparisons between the FM curve and that of Cardelli, 
et al. (CCM, 1989) have been made (see function \emph{ccm_unred}): \cr
a) In the ultraviolet, the FM and CCM curves are similar for R < 4.0, but
diverge for larger R \cr
b) In the optical region, the FM more closely matches the
monochromatic extinction, especially near the R band 

}
\value{
  \item{extcurve}{\code{E(wavelength - V)/E(B-V)} extinction curve, interpolated onto the input wavelength vector}
}
\references{

Cardelli, J.A., Clayton, G. C., Mathis, J. S., 1989, The relationship between infrared, optical, and ultraviolet extinction, Astrophys. J. 345, 245-256.  \url{http://adsabs.harvard.edu/abs/1989ApJ...345..245C}

Clayton, G. C., Wolff, M. J., Sofia, U. J., Gordon, K. D., Misselt, K. A., 2003, Dust grain size distributions from MRN to MEM, Astrophys. J., 588, 871-880. \url{http://adsabs.harvard.edu/abs/2003ApJ...588..871C}

Fitzpatrick, E. L., 1999, Correcting the effects of interstellar extinction, Publ. Astron. Soc. Pacific, 111, 63-75. \url{http://adsabs.harvard.edu/abs/1999PASP..111...63F}

Misselt, K. A., Clayton, G. C., Gordon, K. D., 1999, A reanalysis of the ultraviolet extinction from interstellar dust in the Large Magellanic Cloud, Astrophys. J. 515, 128-139. \url{http://adsabs.harvard.edu/abs/1999ApJ...515..128M}
}
\author{
Written   W. Landsman        Raytheon  STX  October, 1998

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{ 
	\code{\link{polyidl}}
	\code{\link{spline}}	
	}
\examples{
w <- 1200 + seq(50, 2000, by=50)  # wavelength vector
f <- rep(1, length(w))   # flat initial spectrum
fm_unred(w, f, ebv=0.1)
}
\keyword{ misc }
