\name{ldist}
\alias{ldist}

\title{ Integrand for luminosity distance calculation 
}
\description{Integrand for luminosity distance calculation  	
}
\usage{
ldist(z, q0, lambda0) 
}

\arguments{
\item{z}{redshift, positive scalar or vector}
\item{q0}{deceleration parameter, scalar}
\item{lambda0}{cosmological constant normalized to the closure density}
	}
\details{
Used in place of the Mattig formula when the cosmological constant is non-zero.
	}
\value{ Value of the partial integral
}
\examples{
ldist(3.0, 0.5, 0.7)
}
\keyword{ misc }
