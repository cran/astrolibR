\name{adstring}
\alias{adstring}

\title{
Return RA and Dec as character string(s) in sexigesimal format
}
\description{
Return RA and Dec as character string(s) in sexigesimal format
}
\usage{
adstring(ra_dec, dec, precision, truncate = FALSE)
}

\arguments{
  \item{ra_dec}{either a 2-element vector giving Right Ascension and declination, or a scalar giving Right Ascension, in decimal degrees}
  \item{dec}{a scalr giving declination or ra_dec is also a scalar, in decimal degrees (optional)}
  \item{precision}{Integer scalar giving number of digits after the decimal of declination.  The R.A. precision is automatically 1 digit more. (optional, default = 1)}
  \item{truncate}{if set, then the last dispayed digit in the output is truncated in precision rather than rounded (optional, default = FALSE)}
  }
\details{
Common calling sequences are:  result <- adstring(ra_dec, [precision=ndigit, truncate = truncate]) or result <- adstring(ra, dec, [precision=ndigit]) or result <- adstring(dec).

The TRUNCATE=TRUE option is useful if adstring() is used to form an official IAU name (see \url{http://vizier.u-strasbg.fr/Dic/iau-spec.htx}) with coordinate specification.   The IAU name will typically be created with a call like:        strcompress(adstring(ra,dec,0,truncate=TRUE))  
}
\value{
  \item{result}{character string(s) contining HR, MIN, SEC, DEC, MIN, SEC formatted at (2I3, F5.(p+1), 2I3, F4.p) where p is the PRECISION parameter. If only a single scalar is supplied, it is converted to a sexigesimal string with format (2I3, F5.1).}
}
\author{
Written W. Landsman   June 1988

R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
\code{\link{radec}}
\code{\link{sixty}}
}
\examples{
adstring(30.42, -1.23, 1)  # ' 2  1 40.80 -01 13 48.0'
adstring(30.42, -1.23, 0)  # ' 2  1 40.8 -01 13 48'
adstring(0.4, -0.6, 1)     # ' 0  1 36.00 -00 36  0.0"
adstring(230.42711, -49.5922, 0)  # '15 21 42.5 -49 35 32'
adstring(230.42711, -49.5922, 4)  # '15 21 42.50640 -49 35 31.9200'
}
\keyword{ misc }
