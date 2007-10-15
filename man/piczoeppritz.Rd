\name{piczoeppritz}
\alias{piczoeppritz}

\title{Show Scattering Diagram Cartoon}
\description{
  Adds a small diagram showing two layers and
  labeled scattered ray paths.
}
\usage{
piczoeppritz(LL = list(x = c(0, 1), y = c(0, 1)), chincw = "P")
}

\arguments{
  \item{LL}{Bounds of Box for plotting}
  \item{chincw}{character for incident wave}
}
\details{
  This code simply adds a small cartoon showing incoming and outgoing
  waves in scattering matrix.
}
\value{
Graphical side effect.
}

\author{Jonathan M. Lees<jonathan.lees@unc.edu>}

\seealso{pzoeppritz}
\examples{
plot(c(0,1), c(0,1), type='n')
piczoeppritz(LL = list(x = c(0.5, 0.75), y = c(0.5, 0.75)), chincw = "P")

}

\keyword{aplot}
