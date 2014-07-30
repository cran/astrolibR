\name{ymd2dn}
\alias{ymd2dn}

\title{
Convert from year, month, day to day number of year
}
\description{
Convert from year, month, day to day number of year
}
\usage{
ymd2dn(yr, m, d)
}
\arguments{
\item{yr}{4-digit year (like 1988), integer, scalar or vector}
\item{m}{month number, integer (1-12), scalar or vector}   
\item{d}{day of month, integer (1-31), scalar or vector}          
}
\details{
On error, the function returns \preformatted{m = d = -1}.

Conversion in the opposite direction is given by function \emph{ydn2md}.

Copyright (C) 1985, Johns Hopkins University/Applied Physics Laboratory
This software may be used, copied, or redistributed as long as it is not
sold and this copyright notice is reproduced on each copy made.  This
routine is provided as is without any express or implied warranties
whatsoever.  Other limitations apply as described in the file disclaimer.txt.

}
\value{
\item{dy}{day number in year, integer (1-365), scalar or vector}
}
\author{
Written by R. Sterner, JHU/APL  1985

Adapted to IDL by W. Landsman   1998

R adaptation by Arnab Chakraborty (June 2013)
}

\examples{
#  Find the days of the year for June 4 and September 12 in the year 2001
#  Result: days 155 and 255 

ymd2dn(2001, c(6,9), c(4,12))
}
\keyword{ misc }
