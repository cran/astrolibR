\name{ccm_unred}
\alias{ccm_unred}

\title{ Deredden a flux vector using the Cardelli et al. (1989) parameterization
}
\description{
Deredden a flux vector using the Cardelli et al. (1989) parameterization
}
\usage{
ccm_unred(wave,flux,ebv,R_V)
}

\arguments{
  \item{wave}{wavelength in Angstroms, scalar or N-vector}
  \item{flux}{calibrated flux vector, scalar or N-vector}
  \item{ebv}{color excess E(B-V), scalar}
  \item{R_V}{ratio of total to selected extinction, default=3.1 (optional)}
}
\details{
	
The reddening curve is that of Cardelli, Clayton, and Mathis (1989), including the update for the near-UV given by O'Donnell (1994).   Parameterization is valid from the IR to the far-UV (3.5 microns to 0.1 microns). Curve is extrapolated between 912 and 1000 A as suggested by Longo et al. (1989).
 
R_V specifies the ratio of total selective extinction
R(V) = A(V) / E(B - V).    If not specified, then R_V = 3.1
Extreme values of R(V) range from 2.75 to 5.3.

Many sightlines with peculiar ultraviolet interstellar extinction 
can be represented with a CCM curve, if the proper value of R(V) is supplied.

Users might wish to consider using the alternate procedure FM_UNRED which uses the extinction curve of Fitzpatrick (1999).

The CCM curve shows good agreement with the Savage and Mathis (1979)
        ultraviolet curve shortward of 1400 A, but is probably
        preferable between 1200 and 1400 A.

Valencic et al. (2004) revise the ultraviolet CCM
        curve (3.3 -- 8.0 um-1).    But since their revised curve does
        not connect smoothly with longer and shorter wavelengths, it is
        not included here.
}
\value{
  \item{funred}{unreddened flux, scalar or N-vector.}
}
\references{

Cardelli, J. A., Clayton, G. C., Mathis, J. S., The relationship between infrared, optional, and ultraviolet extinction, Astrophysical Journal, 345, 245-256, 1989. \url{http://adsabs.harvard.edu/abs/1989ApJ...345..245C}

Fitzpatrick, E. D., Correcting the effects of interstellar extinction, Publ. Astron. Soc. Pacific, 111, 63-75, 1999.  \url{http://adsabs.harvard.edu/abs/1999PASP..111...63F}

Longo, R., Stalio, R., Polidan, R. S., Rossi, L., Intrinsic ultraviolet (912-3200 A) energy distribution of OB stars, Astrophysical Journal 339, 474-487, 1989. \url{http://adsabs.harvard.edu/abs/1989ApJ...339..474L}

O'Donnell, J. E., R-nu-dependent optical and near-ultraviolet extinction, Astrophysical Journal, 422, 158-163, 1994. \url{http://adsabs.harvard.edu/abs/1994ApJ...422..158O}

Savage, B. D. & Mathis, J. S., Observed properties of interstellar dust, Ann. Rev. Astron. Astrophys. 17, 73-111, 1979. \url{http://www.annualreviews.org/doi/pdf/10.1146/annurev.aa.17.090179.000445} 

Valencic, L. A., Clayton, G., C., Gordon, K. D., Ultraviolet extinction properties in the Milky Way, Astrophysical Journal., 616, 912-924, 2004. \url{http://adsabs.harvard.edu/abs/2004ApJ...616..912V}
}
\author{
Written   W. Landsman        Hughes/STX   January, 1992

R adaptation by Arnab Chakraborty  June 2013
}

\seealso{ \code{\link{calz_unred}}
}
\examples{
w <- 1200 + seq(50, 2000, by=50)  # wavelength vector
f <- rep(1, length(w))   # flat initial spectrum
ccm_unred(w, f, ebv=0.1)
}
\keyword{ misc }
