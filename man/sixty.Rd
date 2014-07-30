\name{sixty}
\alias{sixty}

\title{ Convert a decimal number to sexigesimal
}
\description{Convert a decimal number to sexigesimal
}
\usage{
 sixty(scalar, trailsign = F)
}

\arguments{
\item{scalar}{decimal quantity, scalar}
\item{trailsign}{if =TRUE, then the function returns a negative sign to the 
	first element, even if it is zero.  If = FALSE, then the function returns 
	a negative sign in the first nonzero element. (default = FALSE)}
	}
\details{
Reverse of the function \emph{ten}.
	}
\value{
\item{result}{real vector of three elements, sexigesimal equivalent of input 
	decimal quantity}
}
\author{
Written by R. S. Hill, STX, 1987

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
sixty(136.127)
sixty(-0.345)  #  returns (0.0,-20.0,42.0)
sixty(-0.345, trailsign=TRUE)  #  returns (-0.0,20.0,42.0)
}
\keyword{ misc }
