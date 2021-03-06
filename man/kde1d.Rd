% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kde1d.R
\name{kde1d}
\alias{kde1d}
\title{Univariate kernel density estimation for bounded and unbounded support}
\usage{
kde1d(data, xmin = -Inf, xmax = Inf, bw = NULL, mult = 1)
}
\arguments{
\item{data}{vector of length \eqn{n}.}

\item{xmin}{lower bound for the support of the density.}

\item{xmax}{upper bound for the support of the density.}

\item{bw}{bandwidth parameter; has to be a positive number or \code{NULL};
the latter calls an automatic selection routine.}

\item{mult}{numeric; the actual bandwidth used is \eqn{bw*mult}.}
}
\value{
An object of class \code{kde1d}.
}
\description{
Univariate kernel density estimation for bounded and unbounded support
}
\details{
If \code{xmin} or \code{xmax} are finite, the density estimate will be 0
outside of \eqn{[xmin, xmax]}. Mirror-reflection is used to correct for
boundary bias.
}
\examples{
data(wdbc)  # load data
fit <- kde1d(wdbc[, 5])  # estimate density
dkde1d(1000, fit)  # evaluate density estimate

}
\seealso{
\code{\link{dkde1d}},
\code{\link{pkde1d}},
\code{\link{qkde1d}},
\code{\link{rkde1d}}
\code{\link{plot.kde1d}} ,
\code{\link{lines.kde1d}}
}

