\name{bprecess}
\alias{bprecess}

\title{ Precess celestial positions from J2000.0 (FK5) to B1950.0 (FK4)
}
\description{
Precess celestial positions from J2000.0 (FK5) to B1950.0 (FK4)
}
\usage{
bprecess(ra,dec,mu_radec,parallax,rad_vel,epoch)
}

\arguments{

  \item{ra}{J2000 right ascension, in degrees (scalar or N-vector) }
  \item{dec}{J2000 declination, in degrees (scalar or N-vector) }
  \item{mu_radec}{2xN element vector containing proper motion in seconds or arc
  	per tropical century in right ascension and declination (optional)}
  \item{parallax}{parallax in seconds of arc, scalar or N-vector (optional)}
  \item{rad_vel}{radial velocity in km/s, scalaror N-vector (optional)}
  \item{epoch}{epoch of original observation, default 2000.0 (optional)}
}
\details{
Calculates the mean place of a celestial object at B1950.0 on the FK4 system from
the mean place at J2000.0 on the FK5 system. The epoch input is only used if the 
mu_radec input is not set.

The algorithm is taken from the Explanatory Supplement to the Astronomical Almanac 1992, page 186. Also see Aoki et al (1983).

BPRECESS distinguishes between the following two cases: (1) The proper motion is known and non-zero; and (2) the proper motion is unknown or known to be exactly zero (i.e.
extragalactic radio sources).   In the latter case, the reverse of 
the algorithm in Appendix 2 of Aoki et al. (1983) is used to 
ensure that the output proper motion is  exactly zero. Better 
precision can be achieved in this case by inputting the EPOCH 
of the original observations.

The error in using the IDL procedure PRECESS for converting between
B1950 and J1950 can be up to 12", mainly in right ascension.   If
better accuracy than this is needed then BPRECESS should be used.
An unsystematic comparison of BPRECESS with the IPAC precession 
routine (http://nedwww.ipac.caltech.edu/forms/calculator.html) always 
gives differences less than 0.15".
}
\value{
  \item{ra_1950}{B1950 right ascension, in degrees (scalar or N-vector)}
  \item{dec_1950}{B1950 declination, in degrees (scalar or N-vector)}
}
\references{
	The Explanatory Supplement to the Astronomical Almanac, U.S. Naval Observatory,
	http://aa.usno.navy.mil/publications/docs/exp_supp.php
	
Aoki, S., Soma, M., Kinoshita, H. & Inoue, K., Conversion matrix of epoch B 1950.0 FK 4-based positions of stars to epoch J 2000.0 positions in accordance with the new IAU resolutions, Astronomy & Astrophysics 128, 263-267, 1983. 	 
}
\author{
Written,    W. Landsman                October, 1992

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
# The star HD 119288 has
# RA(2000) = 13h 42m 12.740s Dec(2000) = 8d 23' 17.69'' 
#   Mu(RA) = -.0257 s/yr Mu(Dec) = -.090 ''/yr 

mu_radec=100*c(-15*0.257, -0.090)
ra = ten(13, 42, 12.740)*15.
dec = ten(8,23,17.69)
bprecess(ra, dec, mu_radec) 

}
\keyword{ misc }
