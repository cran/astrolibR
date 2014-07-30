\name{euler}
\alias{euler}

\title{
Transform between Galactic, celestial, and ecliptic coordinates
}
\description{
Transform between Galactic, celestial, and ecliptic coordinates
}
\usage{
euler(ai, bi, select, fk4, radian)
}

\arguments{
	\item{ai}{longitude, in degrees unless radian=TRUE is set, scalar or vector}
	\item{bi}{latitude, degrees unless radian=TRUE is set, scalar or vector}
	\item{select}{integer (1-6) specifying type of coordinate transformation:  
1 = RA-Dec (J2000)  to Galactic; 2 = Galactic to RA-Dec; 3 = RA-Dec (J2000) to Ecliptic; 4 = Ecliptic to RA-Dec; 5 = Ecliptic to Galactic; 6 = Galactic to Ecliptic}
	\item{fk4}{set to TRUE if input and output celestial and equatorial coordinates are given in equinox B1950 (default = FALSE)}
	\item{radian}{set to TRUE in all input and output angles are in radians rather than degrees (default = FALSE)}
}
\details{
J2000 coordinate conversions are based on sec. 1.2 of Perryman (1997). 

Related functions are provided in CRAN packages \emph{moonsun} and \emph{sphereplot}. 
}
\value{
  \item{ao}{longitude, in degrees}
  \item{bo}{latitude, in degrees}
}
\references{
Perryman, M. (editor) 1997, The Hipparcos and Tycho Catalogues, Vol. 1, ESA SP-1200.  \url{http://www.rssd.esa.int/SA/HIPPARCOS/docs/vol1_all.pdf}
}
\author{
Written by W. Landsman,  February 1987;  adapted from Fortran by Daryl Yentis NRL
   
R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
# Input: RA and dec of Cyg X-1
# Output: Galactic long and lat  = (71.334990, 3.0668335)

euler(299.590315, 35.201604, 1) 
}
\keyword{ misc }

