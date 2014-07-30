\name{lumdist}
\alias{lumdist}

\title{ Calculate luminosity distance (in Mpc) of an object given its redshift 
}
\description{Calculate luminosity distance (in Mpc) of an object given its redshift 	
}
\usage{
lumdist(z, h0=70, k, lambda0, omega_m, q0) 
}

\arguments{
\item{z}{redshift, positive scalar or vector}
\item{h0}{Hubble expansion parameter, in km/s/Mpc (default = 70.0)}
\item{k}{curvature constant normalized to the closure density (default = 0.0 
	corresponding to a flat universe)}
\item{omega_m}{matter density normalized to the closure density (default = 0.3)}
\item{lambda0}{cosmological constant normalized to the closure density (default = 0.7)}
\item{q0}{deceleration parameter, scalar (default = 0.55)}
	}
\details{
The luminosity distance in the Friedmann-Robertson-Walker model is 
taken from  Carroll et al. (1992, p.511).  It uses a closed form (Mattig equation) 
to compute the distance when the cosmological constant is zero, and otherwise 
computes the partial integral using the R function \emph{integrate}. The 
integration can fail to converge at high redshift for closed universes with
non-zero lambda.   	

No more than two of the four parameters (k, omega_M, lambda0, q0) should be
specified.   None of them need be specified if the default values are adopted.
	}
\value{
\item{lumdist}{The result of the function is the luminosity distance (in Mpc) for each 
input value of z}
}
\references{
Carroll, S. M., Press, W. H. and Turner, E. L., 1992, The cosmological constant, Ann. Rev. Astron. Astrophys., 30, 499-542
}
\author{
Written   W. Landsman        Raytheon ITSS       2000

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
# Plot the distance of a galaxy in Mpc as a function of redshift out 
#  to z = 5.0, assuming the default cosmology (Omega_m=0.3, Lambda = 0.7,
#  H0 = 70 km/s/Mpc)

z <- seq(0,5,length=51)
plot(z, lumdist(z), type='l', lwd=2, xlab='z', ylab='Distance (Mpc)') 

# Now overplot the relation for zero cosmological constant and 
# Omega_m=0.3

lines(z,lumdist(z, lambda=0, omega_m=0.3), lty=2, lwd=2)
}
\keyword{ misc }
