\name{ten}
\alias{ten}

\title{ Convert a sexigesimal number or string to decimal
}
\description{Convert a sexigesimal number or string to decimal
}
\usage{
ten(dd, mm=0, ss=0)   
}

\arguments{
\item{dd}{degrees (0-360) or hour (0-24), integer, scalar \cr
or string giving sexigesimal quantity separated by
spaces or colons; e.g.. "10 23 34" or "-3:23:45.2".}
\item{mm}{minutes, integer (0-60), scalar (default = 0)}
\item{ss}{seconds, integer (0-60), scalar (default = 0)} 
	}
\details{
The output is a real number \preformatted{= dd + mm/60. + ss/3600}. Inverse of the \emph{sixty} function.  The function \emph{tenv} can be used when dealing with a vector of sexigesimal quantities.
	}
\value{
\item{}{decimal equivalent of input sexigesimal quantity, real, scalar}
}
\author{
Written   W. Landsman        Raytheon ITSS       2000 \cr

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
	\code{\link{sixty}}
}
\examples{
ten(12,0,0)   # gives 12
ten("12:00:00")   # gives 12
ten(0,-23,34)  # gives -0.39277778
ten("-0:23:34")   # gives -0.39277778
}
\keyword{ misc }
