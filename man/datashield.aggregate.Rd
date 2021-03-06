% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datashield.aggregate.R
\name{datashield.aggregate}
\alias{datashield.aggregate}
\title{Data aggregation}
\usage{
datashield.aggregate(conns, expr, async = TRUE)
}
\arguments{
\item{conns}{\code{\link{DSConnection-class}} object or a list of \code{\link{DSConnection-class}}s.}

\item{expr}{Expression to evaluate.}

\item{async}{Whether the result of the call should be retrieved asynchronously. When TRUE (default) the calls are parallelized over
the connections, when the connection supports that feature, with an extra overhead of requests.}
}
\value{
The result of the aggregation
}
\description{
Aggregates the expression result using the specified aggregation method in the current Datashield session.
}
