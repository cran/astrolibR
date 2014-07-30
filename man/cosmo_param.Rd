\name{cosmo_param}
\alias{cosmo_param}

\title{
 Derive full set of cosmological density parameters from a partial set
}
\description{
Derive full set of cosmological density parameters from a partial set
}
\usage{
cosmo_param(omega_m, omega_lambda, omega_k, q0)
}

\arguments{
	\item{omega_m}{normalized matter energy density, non-negative scalar}
	\item{omega_lambda}{normalized cosmological constant, scalar}
	\item{omega_k}{normalized curvature parameter, scalar (= 0 for a flat universe}
	\item{q0}{deceleration parameter, scalar (= -R*(R'')/(R')^2
	 = 0.5*omega_m - omega_lambda)}
}
\details{
This procedure is called by \emph{lumdist} and \emph{galage} to allow the user a choice
 in defining any two of four cosmological density parameters.

 Given any two of the four input parameters -- (1) the normalized matter 
 density omega_m (2) the normalized cosmological constant, omega_lambda 
 (3) the normalized curvature term, Omega_k and (4) the deceleration 
 parameter q0 --  this  program will derive the remaining two.     Here 
 "normalized" means divided by the closure density so that 
 omega_m + omega_lambda + omega_k = 1.    For a more
 precise definition see Carroll et al (1992). 

 If fewer than two parameters are defined, this procedure sets default 
 values of omega_k=0 (flat space), omega_lambda = 0.7, omega_m = 0.3
 and q0 = -0.55
 
 If more than two parameters are defined upon input (overspecification), 
 then the first two defined parameters in the ordered list omega_m, 
 omega_lambda, omega_k, q0 are used to define the cosmology.
}
\value{
	\item{omega_m}{normalized matter energy density, non-negative scalar}
	\item{omega_lambda}{normalized cosmological constant, scalar}
	\item{omega_k}{normalized curvature parameter, scalar (= 0 for a flat universe}
	\item{q0}{deceleration parameter, scalar (= -R*(R'')/(R')^2
	 = 0.5*omega_m - omega_lambda)}
}
\references{
Carroll, S. M., Press, W. H. & Turner, E. L., The cosmological constant, Ann. Rev. Astro. Astrophys, 30, 499, 1992. \url{http://www.annualreviews.org/doi/pdf/10.1146/annurev.aa.30.090192.002435}
}
\author{
Written by W. Landsman         Raytheon ITSS         April 2000

R adaptation by Arnab Chakraborty (June 2013)
}
\examples{
cosmo_param(0.3, NULL, 1.0, NULL)  # returns omega_lambda=0.7 and q0=-1.05
}
\keyword{ misc }

