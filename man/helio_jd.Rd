\name{helio_jd}
\alias{helio_jd}

\title{ Convert geocentric (reduced) Julian date to heliocentric Julian date
}
\description{Convert geocentric (reduced) Julian date to heliocentric Julian date
	
}
\usage{
helio_jd(date, ra, dec, B1950=FALSE, time_diff=FALSE)
}

\arguments{
\item{date}{reduced Julian date (= JD - 2400000), scalar or vector}
\item{ra,dec}{scalars giving right ascension and declination, in degrees}
\item{B1950}{If =FALSE, equinox is J2000, if =TRUE, equinox is B1950 (default = FALSE)}
\item{time_diff}{If =TRUE, then the function returns the time difference (heliocentric JD - geocentric JD), in seconds (default=FALSE)} 
	}
\details{
This procedure correct for the extra light travel time between the Earth and the Sun.  An online calculator for this quantity is available at \url{http://www.physics.sfasu.edu/astro/javascript/hjd.html}. Users requiring more precise calculations and documentation should look at the IDL code available at 
\url{http://astroutils.astronomy.ohio-state.edu/time/}.  The algorithm here is from Henden and Kaitchuck (1982, p.114).
	}
\value{
\item{jdhelio}{heliocentric reduced Julian date (but see \emph{time_diff})}
}
\references{
Henden, A. A. and Kaitchuck, R. H., 1982, "Astronomical Photometry", Van Nostrand Reinhold
}
\author{
Written by  W. Landsman       STX     1989

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{bprecess}}
\code{\link{xyz}}
}
\examples{
# What is the heliocentric Julian date of an observation of V402 Cygni
# (J2000: RA = 20 9 7.8, Dec = 37 09 07) taken June 15, 1973 at 11:40 UT?
# Result: hjd = 41848.9881

jd <- juldate(c(1973,6,15,11,40))   #  Get geocentric Julian date
hjd <- helio_jd(jd, ten(20,9,7.8)*15., ten(37,9,7))  
}
\keyword{ misc }
