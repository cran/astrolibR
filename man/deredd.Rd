\name{deredd}
\alias{deredd}

\title{
 Deredden stellar Stromgren parameters given for a value of E(b-y)
}
\description{
Deredden stellar Stromgren parameters given for a value of E(b-y)
}
\usage{
deredd(eby,by,m1,c1,ub)
}

\arguments{
  \item{eby}{color index E(b-y), E(b-y) = 0.73*E(B-V), scalar}
	\item{by}{b-y color (observed)}
	\item{m1}{Stromgren line blanketing parameter (observed)}
	\item{c1}{Stromgren Balmer discontinuity parameter (observed)}
	\item{ub}{u-b color (observed)}  	
  }
\details{
This function is used by \emph{uvbybeta} where more information is provided.

}
\value{
  \item{by0}{b-y color (dereddened)}
	\item{m0}{Line blanketing index (dereddened)}
	\item{c0}{Balmer discontinuity parameter (dereddened)}
	\item{ub0}{u-b color (dereddened)}
}
\author{
   Adapted from FORTRAN routine DEREDD by T.T. Moon 
   R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
deredd(0.4,0.2,1.0,1.0,0.1)
}
\keyword{ misc }

