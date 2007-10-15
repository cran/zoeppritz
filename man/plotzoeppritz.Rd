\name{plotzoeppritz}
\alias{plotzoeppritz}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot Scattering (Zoeppritz) Coefficients}
\description{
  Plot Scattering (Zoeppritz) Coefficients
}
\usage{
plotzoeppritz(A, zoepcols = c("red", "green", "blue", "purple"), zoeplty = c(1, 1, 1, 1))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{list output of pzoeppritz or zoeppritz}
  \item{zoepcols}{vector of 4 colors}
  \item{zoeplty}{vector of 4 line types}
}
\details{
  Used to plot the matrix of scattering coefficients with different
  colros and/or line types.
}
\value{
 Graphical side effects.
}

\author{Jonathan M. Lees<jonathan.lees@unc.edu>}

\seealso{zoeppritz, pzoeppritz, piczoeppritz}
\examples{


alpha1 = 4.98
  beta1 =  2.9
   rho1 = 2.667

  alpha2 = 8.0
   beta2 = 4.6
   rho2 = 3.38
###############   create the scattering matrix:
 App =  pzoeppritz( "Amplitude" , alpha1, alpha2, beta1, beta2, rho1 ,rho2, "P", "NONE");

#########  plot
plotzoeppritz(App)

}

\keyword{hplot}
