\name{sphdist}
\alias{sphdist}
\title{
Distance on a sphere
}
\description{
Angular distance between two points on a sphere, specified by longitude and latitude}
\usage{
sphdist(long1, lat1, long2, lat2, degrees = FALSE)
}
\arguments{
  \item{long1}{Longitude of the first point}
  \item{lat1}{Latitude of the first point}
  \item{long2}{Longitude of the second point}
  \item{lat2}{Latitude of the second point}
  \item{degrees}{Flag denoting whether input angles are in degrees or radians}
}
\details{ The distance is computed after conversion from spherical to rectangular coordinates.}
\value{
   \item{dis}{Angle, in degrees or radians}
}
\author{
Arnab Chakraborty  R adaptation  2013
}
\seealso{
	\code{\link{gcirc}}
}
\examples{
sphdist(2, 100, -35, 180, +35)
  }
\keyword{ misc }
