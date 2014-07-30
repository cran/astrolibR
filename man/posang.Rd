\name{posang}
\alias{posang}

\title{ Compute position angle of source 2 relative to source 1
}
\description{Computes position angle of source 2 relative to source 1
}
\usage{
posang(u,ra1,dc1,ra2,dc2)
}

\arguments{
\item{u}{binary indicator describing units of inputs and output: 0 = radians; 1=  RAx in decimal hours, DCx in decimal degrees, ANGLE in degrees}
\item{ra1}{Right Ascension of point 1}
\item{dc1}{declination of point 1}
\item{ra2}{Right Ascension of point 2}
\item{dc2}{declination of point 2}
	}
\details{
  Computes the rigorous position angle of source 2 (with given RA, Dec) 
  using source 1 (with given RA, Dec) as the center based on the 
  "four-parts formula" from spherical trigonometry (Smart 1977, p.12) 

  If \emph{(ra1,dc1)} and \emph{(ra2,dc2)} are vectors, then \emph{angle} is a
  vector giving the position angle between each element of \emph{(ra2,dc2)} 
  and \emph{(ra1,dc1)}.   Similarly, if \emph{(ra1,dc1)} are vectors and 
  \emph{(ra2,dc2)} are scalars, then \emph{angle} is a vector giving the position 
  angle of each element of \emph{(ra1,dc1)} and \emph{(ra2,dc2)}.    If both 
  \emph{(ra1,dc1)} and \emph{(ra2,dc2)} are vectors, then \emph{angle} 
  is a vector giving the position angle between each element of \emph{(ra1,dc1)}
  and the corresponding element of \emph{(ra2,dc2)}.    If then vectors are not the
  same length, then excess elements of the longer one will be ignored.

  Note that \emph{posang} is not commutative: the position angle between
   A and B is theta, then the position angle between B and A is 180+theta 
}
\value{
\item{angle}{angle of the great circle containing (ra2, dc2) from
          the meridian containing (ra1, dc1), in the sense north
          through east rotating about (ra1, dc1).  See \emph{u} above 
          for units.}
}
\references{
Smart, W. M., 1977, "Textbook on Spherical Astronomy", Cambridge Univ. Press (originally published 1931) \url{http://adsabs.harvard.edu/abs/1977tsa..book.....S}
}
\author{
Modified from GCIRC, R. S. Hill, RSTX, 1 Apr. 1998

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
#  For the star 56 Per, the Hipparcos catalog gives a position of 
#  RA = 66.15593384, Dec = 33.94988843 for component A, and 
#  RA = 66.15646079, Dec =  33.96100069 for component B.   
#  What is the position angle of B relative to A?
#  Result:  21.4 degrees

ra1 = 66.15593384/15. ;  dc1 = 33.95988843
ra2 = 66.15646079/15. ;  dc2 = 33.96100069
posang(1,ra1,dc1,ra2,dc2)
}
\keyword{ misc }
