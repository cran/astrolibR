\name{co_aberration}
\alias{co_aberration}

\title{
 Calculate changes to right ascension and declination due to astronomical aberration
}
\description{
Calculate changes to right ascension and declination due to astronomical aberration
}
\usage{
co_aberration(jd, ra, dec, eps)
}

\arguments{
  \item{jd}{
Julian Date [scalar or vector]
}
  \item{ra}{
right ascension, in degrees (scalar or N-vector)
}
  \item{dec}{
declination, in degrees (scalar or N-vector)
}
  \item{eps}{
true obliquity of the ecliptic, in radians (optional),
}
}
\details{
Algorithm described in Meeus (1991), Chap 23.  Accuracy is much better than 1 
   arcsecond. 
}
\value{
  \item{d_ra}{corrections to ra due to aberration (must then
                    be added to ra to get corrected values).}
  \item{d_dec}{corrections to dec due to aberration (must then
                     be added to dec to get corrected values).}
  \item{eps}{true obliquity of the ecliptic (in radians).}
}
\references{
Meeus, J., Astronomical Algorithms, Willmann-Bell, 1991
}
\author{
   Original IDL program by       Chris O'Dell, U. of Wisconsin (June 2002)

   R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
	\code{\link{co_refract}}
}
\examples{
co_aberration(2456469.5,253.215,-32.449)
}
\keyword{ misc }

