\name{moonpos}
\alias{moonpos}

\title{ Compute the Right Ascension and Declination of the Moon at specified Julian date(s)
}
\description{ Compute the Right Ascension and Declination of the Moon at specified Julian date(s)	
}
\usage{
moonpos(jd, radian=F)
}

\arguments{
\item{jd}{Julian ephemeris date, scalar or vector}
\item{radian}{if =TRUE, then all output variables are given in radians rather than degrees (default=FALSE)}
	}
\details{
The method is derived from the Chapront ELP2000/82 Lunar Theory (Chapront-Touze and
Chapront, 1983), as described by Jean Meeus (1998, Chpt. 47).
Meeus quotes an approximate accuracy of 10" in longitude and  4" in latitude, but he does 
not give the time range for this accuracy.
Comparison of this procedure with the example in ``Astronomical
  Algorithms'' reveals a very small discrepancy (~1 km) in the distance 
  computation, but no difference in the position calculation.
	}
\value{
\item{ra}{apparent right ascension of the moon, referred to the
          true equator of the specified date(s), in degrees} 
\item{dec}{declination of the moon,  in degrees}
\item{dis}{Earth-moon distance between the center of the
        Earth and the center of the Moon, in km}
\item{geolong}{apparent longitude of the moon referred to the
          ecliptic of the specified date(s), in degrees}
\item{geolat}{apparent longitude of the moon referred to the
          ecliptic of the specified date(s), in degrees}
}
\references{
Chaprint-Touze, M, and Chapront, J. 1983, The lunar ephemeris ELP 2000, Astron. Astrophys. 124, 50-62.

Meeus, J., 1998, ``Astronomical Algorithms'', 2nd ed.,  Willmann-Bell    
}
\author{
Written   W. Landsman      

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{cirrange}}
\code{\link{nutate}}
}
\examples{
# Find the position of the moon on April 12, 1992
# Result: 08 58 45.23  +13 46  6.1
# This is within 1" from the position given in the Astronomical Almanac

jd = jdcnv(1992,4,12,0)    # get Julian date
pos = moonpos(jd)     # get RA and Dec of moon
adstring(pos$ra,pos$dec,1)


# Plot the Earth-moon distance for every day at 0 TD in July, 1996

jd = jdcnv(1996,7,1,0)  # get Julian date of July 1
pos = moonpos(jd+rep(0,31))  # Moon position at all 31 days
plot(seq(1,31), pos$dis, xlab="July 1996 (day)", ylab="Lunar distance (km)")
}
\keyword{ misc }
