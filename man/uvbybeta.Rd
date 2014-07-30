\name{uvbybeta}
\alias{uvbybeta}

\title{ Derive dereddened colors, metallicity, and Teff from Stromgren colors
}
\description{ Derive dereddened colors, metallicity, and Teff from Stromgren colors
}
\usage{
uvbybeta(xby, xm1, xc1, xhbeta, xn, eby_in, name)
}
\arguments{
\item{xby}{Stromgren b-y color, in real magnitudes, scalar or vector}
\item{xm1}{Stromgren line-blanketing parameter, real, scalar or vector}
\item{xc1}{Stromgren Balmer discontinuity parameter, real, scalar or vector}
\item{xhbeta}{H-beta line strength index. See details for use.}
\item{xn}{Spectral class integer indicator (1-8), scalar or vector.  See details for class assignments.}
\item{eby_in}{E(b-y) color, in real magnitudes, scalar.  If not
        supplied, then E(b-y) will be estimated from the Stromgren colors.}
\item{name}{string giving name(s) of star(s), scalar or vector.  Used only 
          when writing to  disk for identification purposes.}
	}
\details{
Method and code adapted from FORTRAN routine of same name published by T.T. Moon,   Communications of University of London Observatory, No. 78 (1985). 

Set input \emph{xhbeta} to 0 if it is not known, and the function \emph{ubvybeta} will estimate a value based on xby, xm1,and xc1.  H-beta is not used for stars in group 8.
       
The indicator \emph{n} gives approximate spectral class assignments as follows: \cr
\preformatted{	
  n=1 B0 - A0, classes III - V, 2.59 < Hbeta < 2.88,-0.20 <   c0  < 1.00 
  n=2 B0 - A0, class   Ia     , 2.52 < Hbeta < 2.59,-0.15 <   c0  < 0.40 
  n=3 B0 - A0, class   Ib     , 2.56 < Hbeta < 2.61,-0.10 <   c0  < 0.50 
  n=4 B0 - A0, class   II     , 2.58 < Hbeta < 2.63,-0.10 <   c0  < 0.10 
  n=5 A0 - A3, classes III - V, 2.87 < Hbeta < 2.93,-0.01 < (b-y)o< 0.06 
  n=6 A3 - F0, classes III - V, 2.72 < Hbeta < 2.88, 0.05 < (b-y)o< 0.22 
  n=7 F1 - G2, classes III - V, 2.60 < Hbeta < 2.72, 0.22 < (b-y)o< 0.39 
  n=8 G2 - M2, classes  IV - V, 0.20 < m0    < 0.76, 0.39 < (b-y)o< 1.00 
}  
	}
\value{A data frame with the following columns:
\item{name}{string giving name(s) of star(s), scalar or vector.} 
\item{group}{derived n, approximate spectral class}
\item{by}{Stromgren b-y color, in real magnitudes, scalar or vector}
\item{hbeta.status}{Flag: 0 = H-beta value is input;  1 = H-beta value is estimated}
\item{by0}{dereddened color index, E(b-y)_0}
\item{m0}{dereddened magnitude, m_0} 
\item{c0}{dereddened Stromgren Balmer discontinuity parameter, c_0}
\item{eby}{color excess, E(b-y)}
\item{mv}{dereddened visual magnitude, M_V}
\item{radius}{estimated stellar radius, in R_solar}
\item{delm0.status}{Metallicity flag:  1 if n=1; 2 if n=3; otherwise 0}
\item{delm0}{estimated metallicity index, m0_ZAMS - m_0}
\item{teff}{estimated stellar effective temperature, T_eff}
\item{warn}{warnings from code}
}
\author{
  W. Landsman          IDL coding               1988

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{deredd}} 
}
\examples{
#  Suppose 5 stars have the following Stromgren parameters.
#  Determine their stellar parameters.  
#  Result: E(b-y) = 0.050    0.414   0.283  0.023  -0.025
#          Teff =   13060    14030   18420  7250    5760
#          M_V =    -0.27    -6.91   -5.94  2.23    3.94
#          radius=  2.71     73.51    39.84 2.02    1.53

by = c(-0.001 ,0.403, 0.244, 0.216, 0.394)
m1 = c(0.105, -0.074, -0.053, 0.167, 0.186)
c1 = c(0.647, 0.215, 0.051, 0.785, 0.362)
hbeta = c(2.75, 2.552, 2.568, 2.743, 0)
nn = c(1,2,3,7,8)   
          
out = uvbybeta(by, m1, c1, hbeta, nn)
c(out$by0, out$teff, out$mv, out$radius)
}

\keyword{ misc }
