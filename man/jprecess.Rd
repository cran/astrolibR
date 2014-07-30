\name{jprecess}
\alias{jprecess}

\title{ Precess celestial positions from B1950.0 (FK4) to J2000.0 (FK5) with proper motion
}
\description{
Precess celestial positions from B1950.0 (FK4) to J2000.0 (FK5) with proper motion
}
\usage{
jprecess(ra,dec,mu_radec,parallax,rad_vel,epoch=1950)
}

\arguments{
  \item{ra}{B1950 right ascension, in degrees (scalar or N-vector) }
  \item{dec}{B1950 declination, in degrees (scalar or N-vector) }
  \item{mu_radec}{2xN element vector containing proper motion in seconds or arc
  	per tropical century in right ascension and declination (optional)}
  \item{parallax}{parallax in seconds of arc, scalar or N-vector (optional)}
  \item{rad_vel}{radial velocity in km/s, scalaror N-vector (optional)}
  \item{epoch}{epoch of original observation, (default = 1950) (optional)}
}
\details{
Calculates the mean place of a celestial object at J2000.0 on the FK5 system from the mean place at B1950.0 on the FK4 system. Use the function \emph{bprecess} for precession in the other direction from J2000 to B1950. 

The algorithm is taken from the Explanatory Supplement to the Astronomical Almanac 1992, page 186. Also see Aoki et al (1983).

BPRECESS distinguishes between the following two cases: (1) The proper motion is known and non-zero; and (2) the proper motion is unknown or known to be exactly zero (i.e.
extragalactic radio sources).   In the latter case, the reverse of 
the algorithm in Appendix 2 of Aoki et al. (1983) is used to 
ensure that the output proper motion is  exactly zero. Better 
precision can be achieved in this case by inputting the EPOCH 
of the original observations.
}
\value{
  \item{ra_2000}{J2000 right ascension, in degrees (scalar or N-vector)}
  \item{dec_2000}{J2000 declination, in degrees (scalar or N-vector)}
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
#  The SAO catalogue gives the B1950 position and proper motion for the 
#  star HD 119288.   Find the J2000 position. 
#  RA(1950) = 13h 39m 44.526s      Dec(1950) = 8d 38' 28.63''  
#  Mu(RA) = -.0259 s/yr      Mu(Dec) = -.093 ''/yr
#  Result: 13h 42m 12.740s    +08d 23' 17.69"	

mu_radec = c(100*(-15)*0.0259, 100*(-0.093))
ra = ten(13,39,44.526)*15 
dec = ten(8,38,28.63)
result = jprecess(ra, dec, mu_radec = mu_radec)
result
adstring(result$ra2000, result$dec2000,2)
	}
\keyword{ misc }
