\name{juldate}
\alias{juldate}

\title{
 Convert from calendar to Reduced Julian Date
}
\description{
Convert from calendar to Reduced Julian Date
}
\usage{
juldate(date)
}
\arguments{
\item{date}{3 to 6-element vector containing year,month (1-12),day, and 
         optionally hour, minute, and second.  These are all values of Universal Time.   		 Year should be supplied with all digits.
         Years B.C should be entered as negative numbers (and note that
         Year 0 did not exist).  If hour, minute or seconds are not 
         supplied, they will default to 0. }
}
\details{
Julian Day Number is a count of days elapsed since Greenwich mean noon 
on 1 January 4713 B.C.  The Julian Date (JD) is the Julian day number
followed by the fraction of the day elapsed since the preceding noon. 
The output of this function is the Reduced Julian Date 
\preformatted{RJD = JD - 2400000.0}  

The function \emph{helio_jd} can be used after \emph{juldate} if a heliocentric
Julian date is required.  The function \emph{daycnv} converts dates in the opposite 
direction from Julian dates to Gragorian calendar dates. 

The algorithm is obtained from Sky and Telescope April 1981 

}
\value{
\item{jd}{Reduced Julian Date, scalar}
}
\author{
Adapted from IUE RDAF (S. Parsons)                      8-31-87

R adaptation by Arnab Chakraborty (June 2013)
}
\seealso{
\code{\link{helio_jd}}
\code{\link{daycnv}}
}
\examples{

#  The date of 25-DEC-2006 06:25 UT 
#  Result:   JD = 54094.7673611

juldate(c(2006, 12, 25, 6, 25)) 
juldate(c(2006, 12, 25.2673611)) 
}
\keyword{ misc }
