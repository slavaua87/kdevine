% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kdevine.R
\name{kdevine}
\alias{kdevine}
\title{High-dimensional kernel density estimation based on vine copulas}
\usage{
kdevine(data, mult.1d = 1, copula.type = "kde", ...)
}
\arguments{
\item{data}{(\eqn{n x d}) data matrix.}

\item{mult.1d}{numeric; all bandwidhts for univariate kernel density estimation
are multiplied with \code{mult.1d}.}

\item{copula.type}{either \code{"kde"} (default) or \code{"parametric"} for
kernel or parametric estimation of the vine copula.}

\item{...}{further arguments passed to \code{\link{kde1d}} or
\code{\link{kdevinecop}}.}
}
\value{
An object of class \code{kdevine}.
}
\description{
High-dimensional kernel density estimation based on vine copulas
}
\examples{
data(wdbc)  # load data

# estimate density (use xmin to indicate positive support)
fit <- kdevine(wdbc[, 5:7], xmin = rep(0, 3))
dkdevine(c(1000, 0.1, 0.1), fit)  # evaluate density estimate
pairs(rkdevine(nrow(wdbc), fit))  # plot simulated data

}
\seealso{
\code{\link{dkdevine}}
\code{\link{kde1d}}
\code{\link{kdevinecop}}
}

