\name{month_cnv}
\alias{month_cnv}

\title{ Convert between a month name and  the equivalent number
}
\description{ Convert between a month name and  the equivalent number
}
\usage{
month_cnv(monthinput, up=FALSE, short=FALSE)
}

\arguments{
\item{monthinput}{either a string ('January', 'Jan', 'Decem', etc.) or
a number from 1 to 12,  scalar or array. }
\item{up}{if =TRUE and if a string is being returned, it will be in all
uppercase letters.  If = FALSE, all lowercase letters are used (default = FALSE)}
\item{short}{if =TRUE and if a string is being returned, only the first
three letters are returned (default = FALSE)}
}
	
\details{
 For example, this function converts from 'January' to 1, or vice-versa. String
 output can be in the form "january", "JANUARY", "jan", "JAN".  
	}
\value{
If the input is a string, the output is the matching month number.If
an input string is not a valid month name, -1 is returned. \cr
If the input is a number, the output is the matching month name.  See 
details for formats.}
\author{
Written by:     Joel Wm. Parker, SwRI, 1998 

R adaptation by Arnab Chakraborty  June 2013
}
\examples{

month_cnv('Apr')
month_cnv(4,short=TRUE,up=TRUE)
}
\keyword{ misc }
