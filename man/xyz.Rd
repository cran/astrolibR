\name{xyz}
\alias{xyz}

\title{ Calculate geocentric X,Y, and Z  and velocity coordinates of the Sun
}
\description{Calculate geocentric X,Y, and Z  and velocity coordinates of the Sun
}
\usage{
xyz(date, equinox)
}
\arguments{
\item{date}{reduced julian date (=JD - 2400000), scalar or vector}
\item{equinox}{equinox of output (default = 1950)}
	}
\details{
   Calculates geocentric X,Y, and Z vectors and velocity coordinates 
   (dx, dy and dz) of the Sun.  The positive X axis is directed towards 
   the equinox, the y-axis is directed towards the point on the equator at right 
   ascension 6h, and the z axis is directed toward the north pole of the equator.
   Typical position accuracy is <1e-4 AU (15000 km).

The Earth-Sun distance is given by sqrt(x^2 + y^2 + z^2) for the given date.
   Note that velocities in the Astronomical Almanac are for Earth/Moon barycenter
         (a very minor offset); see AA 1999 page E3.
	}
\value{
\item{x,y,z}{geocentric rectangular coordinates, in Astronomical Units, scalar or vector}
\item{xvel,yvel,zvel}{velocity vectors corresponding to X, Y and Z}
}
\references{
   Original algorithm from Almanac for Computers, Doggett et al. USNO 1978
   Adapted from the book Astronomical Photometry by A. Henden
}
\author{
Written   W. Landsman        Raytheon ITSS       1989 and 2000

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
	
#   What were the rectangular coordinates of the Sun on 
#  Jan 22, 1999 0h UT (= JD 2451200.5) in J2000 coords? 
#  NOTE: Astronomical Almanac (AA) is in TDT, so add 64 seconds to UT to convert.

xyz(51200.5+64./86400, equinox=2000)

#   Compare to Astronomical Almanac (1999 page C20)
#              X  (AU)        Y  (AU)     Z (AU)
#  XYZ:      0.51456871   -0.76963263  -0.33376880
#  AA:       0.51453130   -0.7697110   -0.3337152
#  abs(err): 0.00003739    0.00007839   0.00005360
#  abs(err)
#      (km):   5609          11759         8040 

}
\keyword{ misc }
