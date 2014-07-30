\name{zang}
\alias{zang}

\title{ Determine the angular size of an object as a function of redshift 
}
\description{Determine the angular size of an object as a function of redshift 	
}
\usage{
zang(dl, z, h0, k, lambda0, omega_m, q0)
}

\arguments{
\item{dl}{linear size of the object, in kpc, scalar or vector}
\item{z}{redshift, scalar or vector}
\item{h0}{Hubble expansion parameter, in km/s/Mpc (default = 70.0)}
\item{k}{curvature constant normalized to the closure density (default = 0.0 
	corresponding to a flat universe)}
\item{lambda0}{cosmological constant normalized to the closure density (default = 0.7)}
\item{omega_m}{matter density normalized to the closure density (default = 0.3)}
\item{q0}{deceleration parameter, scalar corresponding to \preformatted{-R*(R'')/(R')^2} (default = -0.55)}
	}
\details{
This function requires an input size in kpc and returns an angular size in arc seconds.

Default cosmology has a Hubble constant of 70 km/s/Mpc, Omega (matter)=0.3 
and a normalized cosmological constant Lambda = 0.7.  However these
values can be changed by the user.  Note that \preformatted{Omega_m + lambda0 + k = 1} and \preformatted{q0 = 0.5*omega_m - lambda0}. 
	}
\value{
\item{angsiz}{angular size of the object at the given redshift, in arc seconds, scalar or vector}
}
\author{
Written    J. Hill   STX           1988

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{lumdist}}
}
\examples{
# What would be the angular size of galaxy of diameter 50 kpc at a redshift
#      of 1.5 in an open universe with Lambda = 0 and Omega (matter) = 0.3.
#      Assume the default Hubble constant value of 70 km/s/Mpc.
# Result: 6.58 arc seconds
      
zang(50, 1.5, lambda = 0, omega_m = 0.3)

# Plot the angular size of a 50 kpc diameter galaxy as a function of 
#      redshift for the default cosmology (Lambda = 0.7, Omega_m=0.3) up to 
#      z = 0.5

# zseq = seq(0.01,0.5,length=50)
# plot(zseq, zang(50.0,zseq),xlab='z',ylab='Angular Size (arcsec)')
}
\keyword{ misc }
