\name{lsf_rotate}
\alias{lsf_rotate}

\title{ Create a 1-d convolution kernel to broaden a spectrum from a rotating star
}
\description{Create a 1-d convolution kernel to broaden a spectrum from a rotating star
}
\usage{
lsf_rotate(deltav, vsini, epsilon=0.6)
}

\arguments{
\item{deltav}{step increment in the output rotation kernel, scalar, in km/s}  
\item{vsini}{rotational velocity projected along the line of sight, scalar, in km/s}
\item{epsilon}{limb-darkening coefficient, scalar (default = 0.6)}
	}
\details{
This function can be used to derive the broadening effect, or line spread function (LSF), 
due to stellar rotation on a synthetic stellar spectrum.   It assumes constant limb darkening across the disk. To actually compute the broadening. the spectrum should be convolved with the rotational LSF using a function like \emph{kernapply} or \emph{filter}. 

The  number of points in the output \emph{lsf} will be always be odd (the kernel is
symmetric) and equal to  either ceil(2*Vsini/deltav) or ceil(2*Vsini/deltav) +1 
(whichever number is odd). 

The limb darkening coefficient \emph{epsilon} = 0.6 is typical for  photospheric lines.    The specific intensity I at any angle theta from the specific intensity Icen at the center of the disk is given by \preformatted{I = Icen*(1-epsilon*(1-cos(theta))}.

The algorithm is adapted from rotin3.f in the SYNSPEC software of Hubeny & Lanz 
\url{http://nova.astro.umd.edu/}.    Also see Eq. 17.12 in Gray (1992).
	}
\value{
\item{lsf}{convolution kernel vector for the specified rotational velocity}
}
\references{
Gray, D., 1992, "The Observation and Analysis of Stellar Photospheres"
}
\author{
Written by   W. Landsman          2001

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
# Plot the LSF for a star rotating at 90 km/s in both velocity space and
# for a central wavelength of 4300 A.    Compute the LSF every 3 km/s

lsf = lsf_rotate(3,90)      # LSF will contain 61 pts
}
\keyword{ misc }
