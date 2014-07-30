\name{cirrange}
\alias{cirrange}

\title{Force an angle into the range 0 <= ang < 360
}
\description{
Force an angle into the range 0 <= ang < 360
}
\usage{
cirrange(ang, radians=FALSE)
}

\arguments{
  \item{ang}{angle, scalar or vector}
  \item{radians}{indicates that angle is specified in radians rather than decimal degrees (optional, default = FALSE)}
}
\details{
The input angle is transformed into the range 0 to +360 degrees (or 0 to 2*pi for radians).  This function is used by several other \pkg{astrolib} functions, and is rarely used directly by the user.  
}
\value{
  \item{ang}{transformed angle}
}
\author{
Written by Michael R. Greason, Hughes STX, 10 February 1994

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
new_ang <- cirrange(-40.)   # returns 320.  
}
\keyword{ misc }
