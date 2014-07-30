\name{ismeuv}
\alias{ismeuv}

\title{ Compute the continuum interstellar extreme ultraviolet (EUV) optical depth
}
\description{Compute the continuum interstellar extreme ultraviolet (EUV) optical depth
}
\usage{
ismeuv(wave, hcol, heicol=0.1*hcol, heiicol=0*hcol, fano=F)
}

\arguments{
\item{wave}{vector of wavelength values, in Angstroms}
\item{hcol}{scalar specifying interstellar hydrogen column density, in atoms cm-2}
\item{heicol}{scalar specifying neutral helium column density, in atoms cm-2 (default = 0.1*hcol)}
\item{heiicol}{scalar specifying ionized helium column density, in atoms cm-2 (default = 0.0)}
\item{fano}{If =TRUE, then the 4 strongest auto-ionizing resonances of He I are included (default = FALSE)}   
	}
\details{
The EUV optical depth is computed from the photoionization of hydrogen and helium.
The useful range for \emph{wave} is 40 - 912 A; at shorter wavelengths, 
metal opacity should be considered, and at longer wavelengths there is no 
photoionization.To obtain the attenuation of an input spectrum, multiply by exp(-tau).

This function only computes continuum opacities, and for example,
      the He ionization edges at 504 A  and 228 A are blurred by
      converging line absorptions (Dupuis et al. 1995).
The more complete program  \emph{ismtau.pro} at 
      \url{http://hea-www.harvard.edu/PINTofALE/pro/} extends this work
      to shorter wavelengths and includes metal and molecular hydrogen
      opacities.

Typical values for \emph{hcol} range from 1E17 to 1E20.  For \emph{fano}=TRUE, the shape 
of th auto-ionizing resonances of He I is given by a Fano profile (Rumph et al. 1994).  
If these resonances are included, then the input wavelength vector should have
a fine (>~0.01 A) grid between 190 A and 210 A, since the resonances are very narrow.
	}
\value{
\item{tau}{vector giving resulting optical depth for each element of \emph{wave}}
}
\references{
Dupuis, J., Vennes, S., Bowyer, S., Pradhan, A. K. and Thejll, P., 1995, Hot White Dwarfs in the Local Interstellar Medium: Hydrogen and Helium Interstellar Column Densities and Stellar Effective Temperatures from Extreme-Ultraviolet Explorer Spectroscopy, Astrophys. J. 455, 574 \url{http://adsabs.harvard.edu/abs/1995ApJ...455..574D}

Rumph, T., Bowyer, S. and Vennes, S. 1994, Interstellar medium continuum, autoionization, and line absorption in the extreme ultraviolet, Astron. J. 107, 2108-2114 \url{http://adsabs.harvard.edu/abs/1994AJ....107.2108R}
}
\author{
Written by  W. Landsman   1994

R adaptation by Arnab Chakraborty  June 2013
}
\examples{
	
# One has a model EUV spectrum with wavelength, w (in Angstroms) and 
# flux,f .  Plot the model flux after attenuation by 1e18 cm-2 of HI, 
# with N(HeI)/N(HI) = N(HeII)/N(HI) = 0.05

hcol = 1e18
w = seq(100,900,length=801)
ismeuv(w, hcol)

# f = rep(1,length=8*20)
# plot(w, f*exp(-ismeuv(w, hcol, .05*hcol, .05*hcol)), pch=20)

#  Plot the cross-section of HeI from 180 A to 220 A for 1e18 cm-2
#  of HeI, showing the auto-ionizing resonances.   This is 
#  Figure 1 in Rumph et al. (1994)

# w = 180 + seq(0,40,length=40000        # create a fine wavelength grid
# plot(w, ismeuv(w, 0, 1e18, fano=TRUE), pch=20)          
}
\keyword{ misc }
