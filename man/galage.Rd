\name{galage}
\alias{galage}

\title{
 Determine the age of a galaxy given its redshift and a formation redshift
}
\description{
Determine the age of a galaxy given its redshift and a formation redshift
}
\usage{
galage(z, zform, h0=70.0, omega_m, lambda0, k,q0, silent=FALSE)
}

\arguments{
	\item{z}{measured redshift, scalar or vector}
	\item{zform}{redshift of galaxy formation, scalar or vector}
	\item{h0}{Hubble constant, in km/s/Mpc (default = 70)}
	\item{omega_m}{cosmological matter density normalized to the closure density (default = 0.3)}
	\item{lambda0}{cosmological constant normalized to the closure density (default = 0.7)}
	\item{k}{cosmological curvature constant (default = 0.0 for a flat Universe)}
	\item{q0}{cosmological deceleration parameter (default = -0.55)}
	\item{silent}{if =TRUE, adopted cosmological parameters are not displayed (default=FALSE)}
}
\details{
For a given formation time \emph{zform} and a measured \emph{z}, this procedure integrates dt/dz from \emph{zform} to \emph{z} using the analytic formula of Gardner (1998, eqn. 7).  The integration is implemented by the R function \emph{integrate}. 
	
The value of assumed formation redshift, \emph{zform}, must exceed the measured redshift \emph{z}.  To determine the age of the universe at a given redshift, set \emph{zform} to a large number (e.g. 1000).

}
\value{
\item{age}{age of galaxy, scalar or vector, in years}
}
\references{
Gardner, J. P., 1998, An extendable galaxy number count model, Publ. Astron. Soc. Pacific, 11, 291-305.  \url{http://adsabs.harvard.edu/abs/1998PASP..110..291G}
}
\author{
Written by W. Landsman         Raytheon ITSS         April 2000

R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
\code{\link{integrate}}
\code{\link{cosmo_param}}
\code{\link{dtdz}}
}
\examples{
galage(1.5, 25., omega_m=0.3, lambda0=0.0)   #  result: 3.35 Gyr
}
\keyword{ misc }

