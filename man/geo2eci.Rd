\name{geo2eci}
\alias{geo2eci}

\title{Convert geographic spherical coordinates to Earth-centered inertial coordinates
}
\description{Convert geographic spherical coordinates to Earth-centered inertial coordinates
}
\usage{
geo2eci(incoord, jdtim)
}
\arguments{
	\item{incoord}{a 3-element vector of geographic coordinates [latitude, longitude, altitude], or an array [3,n] of n such coordinates, in degrees/degrees/km}
	\item{jdtim}{Julian Day time, in days, scalar or vector}
}
\details{
Converts from geographic spherical coordinates [latitude, longitude,  altitude] to ECI (Earth-Centered Inertial) [X,Y,Z] rectangular   coordinates. Geographic coordinates assume the Earth is a perfect sphere, with radius equal to its equatorial radius.
}
\value{
	\item{(x, y, z)}{a 3-element vector of ECI coordinates, or an array [3,n] of coordinates, in km from Earth center}
}
\author{
Written by Pascal Saint-Hilaire (ETH) on 2002/05/14

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{ct2lst}}
}
\examples{
	# Obtain the ECI coordinates of the intersection of the equator and Greenwich's meridian 
	# on 2002/03/09 21:21:21.021
	# Returns: -3902.9606 5044.5548  0.0000
geo2eci(c(0,0,0), 2452343.38982663)  
}
\keyword{ misc }
