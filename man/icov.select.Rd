% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SparseICov.R
\name{icov.select}
\alias{icov.select}
\title{Model selection for picking the right \code{lambda} penalty.
This is identical to huge::huge.stars except that the subsampling loop is replaced with an mclapply function to add parallelization capabilities.}
\usage{
icov.select(est, criterion = "stars", stars.thresh = 0.05,
  ebic.gamma = 0.5, stars.subsample.ratio = NULL, rep.num = 20,
  ncores = 1, normfun = function(x) x, verbose = FALSE)
}
\arguments{
\item{est}{an estimate/model as produced by the sparseiCov function}

\item{criterion}{character string specifying criterion/method for model selection accepts 'stars' [default], 'ric', 'ebic'}

\item{stars.thresh}{variability threshold for stars selection}

\item{ebic.gamma}{tuning parameter for ebic}

\item{stars.subsample.ratio}{The default value 'is 10*sqrt(n)/n' when 'n>144' and '0.8' when 'n<=144', where 'n' is the sample size.}

\item{rep.num}{number of subsamplings when \code{criterion} = stars.}

\item{ncores}{number of cores to use. Need multiple processers if \code{ncores > 1}}

\item{normfun}{normalize internally if data should be renormalized}
}
\description{
Model selection for picking the right \code{lambda} penalty.
This is identical to huge::huge.stars except that the subsampling loop is replaced with an mclapply function to add parallelization capabilities.
}

