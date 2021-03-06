% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drkdevinecop.R
\name{dkdevinecop}
\alias{dkdevinecop}
\alias{dkevinecop}
\alias{rkdevinecop}
\title{Working with a \code{kdevinecop} object}
\usage{
dkdevinecop(u, obj, stable = FALSE)

rkdevinecop(n, obj, U = NULL, quasi = FALSE)
}
\arguments{
\item{u}{\eqn{m x 2} matrix of evaluation points.}

\item{obj}{\code{kdevinecop} object.}

\item{stable}{logical; option for stabilizing the estimator: the estimated
pair copula density is cut off at \eqn{50}.}

\item{n}{integer; number of observations.}

\item{U}{(optional) \eqn{n x d} matrix of independent uniform random
variables.}

\item{quasi}{logical; the default (\code{FALSE}) returns pseudo-random
numbers, use \code{TRUE} for quasi-random numbers (generalized Halton, see
\code{\link[qrng:ghalton]{ghalton}}).}
}
\value{
A numeric vector of the density/cdf or a \eqn{n x 2} matrix of
simulated data.
}
\description{
A vine copula density estimate (stored in a \code{kdevinecop} object)
can be evaluated on arbitrary points with \code{dkevinecop}. Furthermore,
you can simulate from the estimated density with \code{rkdevinecop}.
}
\examples{
data(wdbc)  # load data
u <- pobs(wdbc[, 5:7], ties = "average")  # rank-transform to copula data
fit <- kdevinecop(u)  # estimate density
dkdevinecop(c(0.1, 0.1, 0.1), fit)  # evaluate density estimate

}
\author{
Thomas Nagler
}
\references{
Nagler, T., Czado, C. (2015) \cr
Evading the curse of dimensionality in nonparametric density estimation. \cr
arXiv:1503.03305v2 [stat.ME]

Dissmann, J., Brechmann, E. C., Czado, C., and Kurowicka, D. (2013). \cr
Selecting and estimating regular vine copulae and application to financial returns. \cr
Computational Statistics & Data Analysis, 59(0):52--69.
}
\seealso{
\code{\link{kdevinecop}},
\code{\link[kdecopula:dkdecop]{dkdecop}},
\code{\link[kdecopula:rkdecop]{rkdecop}},
\code{\link[qrng:ghalton]{ghalton}}
}

