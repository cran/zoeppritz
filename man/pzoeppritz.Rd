\name{pzoeppritz}
\alias{pzoeppritz}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot Scattering (Zoeppritz) Coefficients}
\description{
 Calculate and plot the P and S-wave scattering amplitudes for a plane
  wave at an interface.
}
\usage{
pzoeppritz(chtype = "Amplitude", alpha1, alpha2, beta1, beta2, rho1, rho2, chincw = "P", choutkind = "ALL")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{chtype}{character, type of output, one of: Amplitude, Potential,
    Energy}
  \item{alpha1}{P-wave Velocity of Upper Layer, km/s}
  \item{alpha2}{P-wave Velocity of Lower Layer, km/s}
  \item{beta1}{S-wave Velocity of Upper Layer, km/s}
  \item{beta2}{S-wave Velocity of Lower Layer, km/s}
  \item{rho1}{Density of Upper Layer, kg/m3}
  \item{rho2}{Density of Lower Layer, kg/m3}
  \item{chincw}{Incident Wave: P, S }
  \item{choutkind}{character, type of out put one of: P, S, ALL, NONE}
}
\details{
  Front end for zoeppritz program.  
}
\value{
  List output of zoeppritz call:
 \item{angle}{Incident angles, degrees}
  \item{rmat}{Matrix of 4 by n reflection coefficients for each angle}
  \item{rra}{Matrix of 4 by n real part of scattering matrix}
  \item{rra}{Matrix of 4 by n imaginary part of scattering matrix}
  \item{ang}{Matrix of 4 by n phase angle}
   \item{incw}{integer, from input parameter }
  \item{icoef}{integer, from input parameter }
  \item{alphacrit}{critical angle}
}
\references{
 Young,~G.B.,~ Braile,~L. W. 1976. A computer program for the application
  of Zoeppritz's amplitude equations and Knott's energy equations,
  {\em Bulletin of the Seismological Society of America}, vol.66,
  no.6,1881-1885.

  K.~Aki and P.~G. Richards.{\em Quantitative seismology}.
  University Science Books, Sausalito, Calif., 2nd edition, 2002.
}
\author{Jonathan M. Lees<jonathan.lees@unc.edu>}
\note{
  This front end is easier to call because it is more verbose.
  Creates a plot of the coefficients versus incident angle.
  If coefficients are complex, they are replaced with NA
  and they are thus not plotted.
}
\seealso{zoeppritz, pzoeppritz, piczoeppritz}
\examples{

#############  Incident wave in Low velocity layer

alpha1 = 4.98
  beta1 =  2.9
   rho1 = 2.667

  alpha2 = 8.0
   beta2 = 4.6
   rho2 = 3.38

  App =  pzoeppritz( "Amplitude" , alpha1, alpha2, beta1, beta2, rho1 ,rho2, "P", "ALL");

App =  pzoeppritz( "Amplitude" , alpha1, alpha2, beta1, beta2, rho1 ,rho2, "S", "ALL");

#############  Incident wave in high velocity layer
  alpha1 = 8.0
  beta1 =  4.6
   rho1 = 3.38

  alpha2 = 4.98
   beta2 = 2.9
   rho2 = 2.667

 App =  pzoeppritz( "Amplitude" , alpha1, alpha2, beta1, beta2, rho1 ,rho2, "P", "ALL");

App =  pzoeppritz( "Amplitude" , alpha1, alpha2, beta1, beta2, rho1 ,rho2, "S", "ALL");


}

\keyword{misc}
\keyword{hplot}