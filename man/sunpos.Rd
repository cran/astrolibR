\name{sunpos}
\alias{sunpos}

\title{Compute the Right Ascension and Declination of the Sun at specified Julian date(s)
}
\description{ Compute the Right Ascension and Declination of the Sun at specified Julian date(s)	
}
\usage{
sunpos(jd, radian=F)
}

\arguments{
\item{jd}{Julian ephemeris date, scalar or vector}
\item{radian}{if =TRUE, then all output variables are given in radians rather than degrees (default=FALSE)}
	}
\details{
This function uses a truncated version of Newcomb's Sun \url{http://en.wikipedia.org/wiki/Newcomb's_Tables_of_the_Sun}.    The returned RA and Dec are in the given date's equinox.

  Patrick Wallace (Rutherford Appleton Laboratory, UK) has tested the
  accuracy of a C adaptation of the IDL \emph{sunpos.pro} code and found the 
  following results.   From 1900-2100 \emph{sunpos} gave 7.3 arcsec maximum 
  error, 2.6 arcsec RMS.  Over the shorter interval 1950-2050 the figures
  were 6.4 arcsec max, 2.2 arcsec RMS.  
	}
\value{
\item{ra}{apparent right ascension of the Sun, referred to the
          true equator of the specified date(s), in degrees} 
\item{dec}{declination of the Sun,  in degrees}
\item{elong}{ecliptic longitude of the Sun, in degrees}
\item{obliquity}{obliquity of the ecliptic, in degrees}
}
\author{
FORTRAN routine by B. Emerson (RGO); IDL version by Michael R. Greason, STX, 1988

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{cirrange}}
\code{\link{nutate}}
\code{\link{polyidl}}
\code{\link{ten}}
}
\examples{
# Find the apparent RA and Dec of the Sun on May 1, 1982
# Result:  02 31 32.61  +14 54 34.9 
# The Astronomical Almanac gives 02 31 32.58 +14 54 34.9,
# so the error in sunpos for this case is < 0.5".
       
jd = jdcnv(1982, 5, 1,0)      # Find Julian date jd = 2445090.5   
out = sunpos(jd)  

  
# Plot the apparent declination of the Sun for every day in 1997

jd = jdcnv(1997,1,1,0)  # Julian date on Jan 1, 1997
days = seq(0,365)  
plot(days, sunpos(jd+days)$dec, type='b', pch=20, lwd=2) 
}
\keyword{ misc }
