\name{eci2geo}
\alias{eci2geo}

\title{
 Convert Earth-centered inertial coordinates to geographic spherical coordinates
}
\description{
 Convert Earth-centered inertial coordinates to geographic spherical coordinates}
\usage{
eci2geo(eci_xyz, jdtim)
}

\arguments{
  \item{eci_xyz}{ECI [X,Y,Z] coordinates (in km), can be an array [3,n] of n such coordinates.}
	\item{jdtim}{Julian Day time, double precision. Can be a 1-D array of n such times.}
}
\details{
Converts from ECI (Earth-Centered Inertial) (X,Y,Z) rectangular 
coordinates to geographic spherical coordinates (latitude, longitude, 
altitude). JD time is also needed as input.

ECI coordinates are in km from Earth center. Geographic coordinates are in degrees/degrees/km. Geographic coordinates assume the Earth is a perfect sphere, with radius equal to its equatorial radius.

\emph{gcoord} can be further transformed into geodetic coordinates (using 
\pkg{astrolib} \emph{geo2geodetic}) or into geomagnetic coordinates (using \emph{geo2mag})
}
\value{
  \item{lat, lon, alt}{3-element array of geographic [latitude,longitude,altitude], or an array [3,n] of n such coordinates, double precision} 
  }
\author{
Written by Pascal Saint-Hilaire (Saint-Hilaire@astro.phys.ethz.ch) on 
 2001/05/13

   R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
\code{\link{ct2lst}}
}
\examples{
eci2geo(c(6378.137+600, 0, 0), 2452343.38982663)  # result 0.0000000  232.27096 600.00000
}
\keyword{ misc }

