\name{dtdz}
\alias{dtdz}

\title{
Integrand for cosmic age vs. redshift in standard cosmology}
\description{
Used by \emph{galage}}
\usage{
dtdz(z,lambda0,q0)
}
\arguments{
	\item{z}{measured redshift, scalar or vector}
	\item{lambda0}{cosmological constant normalized to the closure density}
	\item{q0}{cosmological deceleration parameter}
}
\details{ See \emph{galage}.
}
\author{
R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
\code{\link{galage}}
}
\examples{
dtdz(1.5, 0,0.5)   
}
\keyword{ misc }

