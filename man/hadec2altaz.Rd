\name{hadec2altaz}
\alias{hadec2altaz}

\title{ Convert Hour Angle and Declination to Horizon (alt-az) coordinates
}
\description{Convert Hour Angle and Declination to Horizon (alt-az) coordinates	
}
\usage{
hadec2altaz( ha, dec, lat, ws=F)
}

\arguments{
\item{ha}{local apparent hour angle, in degrees, scalar or vector}
\item{dec}{local apparent declination, in degrees, scalar or vector}
\item{lat}{local latitude, in degrees, scalar or vector}
\item{ws}{if FALSE, the output azimuth is measured East from North.  If TRUE, the output azimuth is measured West from South. (default=FALSE)}
}

\details{
This function is intended mainly to be used by function \emph{eq2hor}. It correctly treats the singularities at the North and South Celestial Poles.

Similar functions, \emph{elev} and \emph{azimuth}, are provided in the CRAN package \emph{astroFns}.  
	}
\value{
\item{alt}{local apparent altitude, in degrees}
\item{az}{local apparent azimuth, in degrees}
}
\author{
Written  by Chris O'Dell (Univ. Wisconsin), 2002

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
	\code{\link{altaz2hadec}}
        \code{\link{eq2hor}}
}
\examples{
# What were the apparent altitude and azimuth of the sun when it transited 
# the local meridian at Pine Bluff Observatory (Lat=+43.07833 degrees) on 
# April 21, 2002?   An object transits the local meridian at 0 hour angle.
# Assume this will happen at roughly 1 PM local time (18:00 UTC).
# Result: Altitude alt = 58.90,  Azimuth  az = 180.0

jd <- jdcnv(2002, 4, 21, 18.) # get rough Julian date to determine Sun declination
sun_pos <- sunpos(jd)
hadec2altaz(0., sun_pos$dec, 43.078333)
}
\keyword{ misc }
