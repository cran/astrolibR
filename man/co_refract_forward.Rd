\name{co_refract_forward}
\alias{co_refract_forward}
\title{
Calculate the true altitude of a celestial object from an observed altitude.
}
\description{
Calculate the true altitude of a celestial object from an observed altitude.
This function is called by \emph{co_refract}, the function to correct altitude due to atmospheric refraction. 
}
\usage{
co_refract_forward(a, p = 1010, t = 283)
}
\arguments{
  \item{a}{The observed (`apparent') altitude, in degrees}
  \item{p}{Atmospheric pressure, in millibars (default=1010)}
  \item{t}{Ground temperature, in degrees Celsius (default=0)}
}
\details{See description for \emph{co_refract}.
}
\value{
   \item{R}{Correction to apparent altitude, subtracted from a, in degrees}
}
\author{
Chris O'Dell   2002

Arnab Chakraborty  R version 2013}
\note{
The IDL documentation may be incorrect: the input variable t appears to be in degrees Kelvin.  The value t=0 is converted to 283, but other values should be in Kelvin.
}
\seealso{
\code{\link{co_refract}}
}
\examples{
co_refract_forward (30) 
}
\keyword{ misc }