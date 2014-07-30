\name{ct2lst}
\alias{ct2lst}

\title{
 Convert from Local Civil Time to Local Mean Sidereal Time
}
\description{
Convert from Local Civil Time to Local Mean Sidereal Time
}
\usage{
ct2lst(lng, tz, tme, day, mon, year)
}

\arguments{
  \item{lng}{The longitude in degrees (east of Greenwich) of the place for 
       which the local sidereal time is desired, scalar. Greenwich 
       mean sidereal time (GMST) can be found by setting lng = 0.}
	\item{tz}{The time zone of the site in hours, positive East of the Greenwich
      meridian (ahead of GMT).  Use this parameter to easily account 
      for Daylight Savings time (e.g. -4=EDT, -5 = EST/CDT).  
      This scalar parameter is not needed (and ignored) if Julian date is 
      supplied. Note that the sign of TZ was changed in July 2008
      to match the standard definition.}
	\item{tme}{If more than three parameters are specified, then this is 
          the time of day of the specified date in decimal hours.  If 
          exactly three parameters are specified, then this is the 
          Julian date of time in question, scalar or vector}
	\item{day}{The day of the month (1-31),integer scalar or vector}
	\item{mon}{The month, in numerical format (1-12), integer scalar or vector}
	\item{year}{The 4 digit year (e.g. 2008), integer scalar or vector}  	
}
\details{
The Julian date of the day and time is question is used to determine
the number of days to have passed since 0 Jan 2000.  This is used
in conjunction with the GST of that date to extrapolate to the current
GST; this is then used to get the LST. See Meeus (1991), p.84, equation 11-4.
The Web site  \url{http://tycho.usno.navy.mil/sidereal.html} contains more
information on sidereal time, as well as an interactive calculator.
}
\value{
  \item{lst}{Local Sidereal Tme for the date/time specified in hours}
}
\references{
Meeus, J., Astronomical Algorithms, Willmann-Bell, 1991
}
\author{
Adapted from the FORTRAN program GETSD by Michael R. Greason, STX, 1988

R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{\code{\link{jdcnv}}
}
\examples{
lng_Balt <- 76.72   # Baltimore MD
ct2lst(lng_Balt, -4, 15.3, 30, 07, 2008)
}
\keyword{ misc }
