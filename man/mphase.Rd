\name{mphase}
\alias{mphase}

\title{ Calculate the illuminated fraction of the Moon at given Julian date(s) 
}
\description{	Calculate the illuminated fraction of the Moon at given Julian date(s) 
}
\usage{
mphase(jd)
}

\arguments{
\item{jd}{Julian date, scalar or vector}
	}
\details{
The output k = 0 indicates a new moon, while k = 1 indicates a full moon.

The algorithm is from Meeus (1991, Chpt. 46)   The functions \emph{sunpos} and \emph{moonpos}
are used to get positions of the Sun and the Moon (and the Moon distance).   The
selenocentric elongation of the Earth from the Sun (phase angle)
is then computed, and used to determine the illuminated fraction.
	}
\value{
\item{k}{illuminated fraction of Moon's disk (0.0 < k < 1.0), same number
of elements as jd.}
}
\references{
Meeus, J., 1991, "Astronomical Algorithms", Willmann-Bell, Richmond
}
\author{
Written   W. Landsman        Hughes STX 1996

R adaptation by Arnab Chakraborty  June 2013
}
\seealso{
\code{\link{sunpos}}
\code{\link{moonpos}}
}
\examples{

mphase(2456877.5)

#  Plot the illuminated fraction of the moon for every day in July 
#  1996 at 0 TD (Greenwich noon).
#
# jd = jdcnv(1996, 7, 1, 0)         # Get Julian date of July 1
# phases = mphase(jd:(jd+31))       # Moon phase for all 31 days
# plot(1:31,phases)                 # Plot phase vs. July day number

}
\keyword{ misc }
