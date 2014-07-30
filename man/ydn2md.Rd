\name{ydn2md}
\alias{ydn2md}

\title{
Convert from year and day number of year to month and day of month
}
\description{
Convert from year and day number of year to month and day of month
}
\usage{
ydn2md(yr, dy)
}
\arguments{
\item{yr}{4-digit year (like 1988), integer, scalar}
\item{dy}{day number in year (like 310), integer, scalar or vector}
}
\details{
Conversion in the opposite direction is given by function \emph{ymd2dn}.

On error, the function returns \preformatted{m = d = -1}.
}
\value{
\item{m}{month number, integer (1-12)}   
\item{d}{day of month, integer (1-31)}          
}
\author{
Adapted from Johns Hopkins University/Applied Physics Laboratory

R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
	\code{\link{ymd2dn}}
}
\examples{
#  Find the month/day of days 155 and 255 in the year 2001
#  Result: m=c(6,9)  d=c(4,12), or June 4 and September 12 

ydn2md(2001, c(155,255))
}
\keyword{ misc }
