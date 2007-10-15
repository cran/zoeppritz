\name{zoeppritz}
\alias{zoeppritz}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Zoeppritz Equations}
\description{
  Calculate the P and S-wave scattering amplitudes for a plane
  wave at an interface.
}
\usage{
zoeppritz(icoef, vp1, vp2, vs1, vs2, rho1, rho2, incw)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{icoef}{type of out put Amplitude=1, Potential=2, Energy=3 }
  \item{vp1}{P-wave Velocity of Upper Layer, km/s}
  \item{vp2}{P-wave Velocity of Lower Layer, km/s}
  \item{vs1}{S-wave Velocity of Upper Layer, km/s}
  \item{vs2}{S-wave Velocity of Lower Layer, km/s}
  \item{rho1}{Density of Upper Layer, kg/m3}
  \item{rho2}{Density of Lower Layer, kg/m3}
  \item{incw}{integer,Incident Wave: P=1, S=2 }
}
\details{
  Coeficiants are calculated at angles from 0-90 degrees.  Zero is
  returned where coefficients are imaginary. 
}
\value{
  List:
  \item{angle}{Incident angles (degrees)}
  \item{rmat}{Matrix of 4 by n reflection coefficients for each angle}
  \item{rra}{Matrix of 4 by n real part of scattering matrix}
  \item{rra}{Matrix of 4 by n imaginary part of scattering matrix}
  \item{ang}{Matrix of 4 by n phase angle}
  \item{incw}{integer, from input parameter }
  \item{icoef}{integer, from input parameter }
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
  Based on the fortran algorithm in Young and Braile.
  Uses a linear approximation by Aki and Richards.
}
\seealso{pzoeppritz, plotzoeppritz}
\examples{


#########  set up 2-layer model
 
 
 alpha1 = 4.98
  beta1 =  2.9
   rho1 = 2.667

  alpha2 = 8.0
   beta2 = 4.6
   rho2 = 3.38
###################  P-wave incident = 1
     incw=1;
   icoef=1

A =  zoeppritz(icoef, alpha1, alpha2, beta1, beta2, rho1,rho2,   incw)

plot(A$angle, A$rmat[,1], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="P-wave incident/P-wave Reflected" )

plot(A$angle, A$rmat[,2], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="P-wave incident/S-wave Reflected" )

plot(A$angle, A$rmat[,3], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="P-wave incident/P-wave Refracted" )

plot(A$angle, A$rmat[,4], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="P-wave incident/S-wave Refracted" )

###################  S-wave incident = 2
     incw=2
   icoef=1

A =  zoeppritz(icoef, alpha1, alpha2, beta1, beta2, rho1,rho2,   incw)

plot(A$angle, A$rmat[,1], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="S-wave incident/P-wave Reflected" )

plot(A$angle, A$rmat[,2], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="S-wave incident/S-wave Reflected" )

plot(A$angle, A$rmat[,3], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="S-wave incident/P-wave Refracted" )

plot(A$angle, A$rmat[,4], xlab="Incident Angle", ylab="Ratio of Amplitudes",
main="S-wave incident/S-wave Refracted" )





}

\keyword{misc}
