\name{polyidl}
\alias{polyidl}

\title{ Calculate polynomial }
\description{
Calculate polynomial following IDL's poly.pro function
}
\usage{
polyidl(x,cc)
}

\arguments{
  \item{x}{scalar, vector or array}
  \item{cc}{vector of polynomial coefficients for polynomial of degree length(cc)-1}
}
\value{
This function returns the quantity \cr
cc[1] + cc[2]*x + cc[3]*x^2 + cc[4]*x^3 + ...
}
\references{
See http://www.exelisvis.com/docs/POLY.html
}
\author{
Eric Feigelson July 2014
}
\examples{
polyidl(2:4, 3:5)  # returns 31,60,99
}
\keyword{ misc }
