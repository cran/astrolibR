\name{planet_coords}
\alias{planet_coords}

\title{ Calculate low precision Right Ascension and declination for the planets given a date
}
\description{ Calculate low precision Right Ascension and declination for the planets given a date	
}
\usage{
planet_coords(date, planet=planet, jd = FALSE)
}

\arguments{
\item{date}{If \emph{jd=FALSE}, then \emph{date} is a 3-6 element vector containing
           year,month (1-12), day, and optionally hour, minute, & second.
           If \emph{jd=TRUE}, then \emph{date} is a vector of Julian dates.} 
\item{planet}{scalar string giving name of a planet, e.g. 'venus' (default = planet that 
computes coordinates for all planets except Earth)}
\item{jd}{If =TRUE, then the date parameter should be supplied as one or more Julian dates (default = FALSE)}
	}
\details{
 For low precision, this routine uses function \emph{helio} to get the heliocentric ecliptic
 coordinates of the planets at the given date, then converts these to 
 geocentric ecliptic coordinates following Meeus (1991, p.209). 
 These are then converted to Right Ascension and declination using the function \emph{euler}.
The function returns astrometric coordinates, i.e. no correction
for aberration.  
 The accuracy between the years 1800 and 2050 is better than 1 arcminute 
 for  the terrestial planets, but reaches 10 arcminutes for Saturn.    
 Before 1850 or after 2050 the accuracy can get much worse.   

The high precision option available in the IDL procedure based on JPL planetary ephemerides is not current available in the R \pkg{astrolib} package. The  \emph{helio} function is based on the two-body problem and neglects interactions  between the planets.  This is why the worst results are for Saturn. 
	}
\value{
\item{ra}{Right Ascension of planet(s), J2000 degrees}
\item{dec}{declination of planet(s), J2000 degrees}
}
\references{
Meeus, J. 1991, "Astronomical Algorithms"  
}
\author{
Written P.Plait & W. Landsman     2000

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{helio}}
\code{\link{euler}}
\code{\link{juldate}}
}
\examples{
# Find the RA, Dec of Venus on 1992 Dec 20
# Result: RA = 21 05  2.66  Dec = -18 51 45.7

planet_coords(c(1992,12,20))    # compute for all planets
adstring(ra[2],dec[2],1)        # Venus is second planet
# This position is 37" from the full DE406 ephemeris position of
# RA = 21 05  5.24        -18 51 43.1

# Plot the declination of Mars for every day in the year 2001

jd = jdcnv(2001,1,1,0)      # get Julian date of midnight on Jan 1
out = planet_coords(jd+seq(0,365), planet='mars')     
plot(jd+seq(0,365), out$dec, pch=20, xlab='Day of 2001', ylab='Declination of Mars (degrees)')
}
\keyword{ misc }
