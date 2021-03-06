% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datashield.assign.R
\name{datashield.assign.table}
\alias{datashield.assign.table}
\title{Table assignment}
\usage{
datashield.assign.table(conns, symbol, table, variables = NULL,
  missings = FALSE, identifiers = NULL, id.name = NULL,
  async = TRUE)
}
\arguments{
\item{conns}{\code{\link{DSConnection-class}} object or a list of \code{\link{DSConnection-class}}s.}

\item{symbol}{Name of the R symbol.}

\item{table}{Fully qualified name of a table in the data repository (can be a vector or must be
the same in each data repository); or a named list of fully qualified table names (one per server
name); or a data frame with 'server' and 'table' columns (such as the one that is used in
\code{\link{datashield.login}})}

\item{variables}{List of variable names or Javascript expression that selects the variables of
a table. See javascript documentation:
\url{http://opaldoc.obiba.org/en/latest/magma-user-guide/variable/}}

\item{missings}{If TRUE, missing values will be pushed from data repository to R, default is FALSE.
Ignored if value is an R expression.}

\item{identifiers}{Name of the identifiers mapping to use when assigning entities to R (if supported
by the data repository).}

\item{id.name}{Name of the column that will contain the entity identifiers. If not specified, the identifiers
will be the data frame row names. When specified this column can be used to perform joins between data frames.}

\item{async}{Whether the result of the call should be retrieved asynchronously. When TRUE (default) the calls are parallelized over
the connections, when the connection supports that feature, with an extra overhead of requests.}
}
\description{
Assign a table to a R symbol in the Datashield R session.
}
\examples{
\dontrun{
# assign a list of variables from table HOP
datashield.assign.table(conn, symbol="D", table="demo.HOP",
  variables=list("GENDER","LAB_GLUC"))

# assign all the variables matching 'LAB' from table HOP
datashield.assign.table(conn, symbol="D", table="demo.HOP",
  variables="name().matches('LAB_')")

# assign the tables that are defined in the logindata ('server' and 'table' columns are
# expected) data frame that is used in datashield.login() function. Connections names
# and server names must match.
datashield.assign.table(conns, "D", logindata)

# assign the tables that are defined in the provided named list. Connections names
# and server names must match.
datashield.assign.table(conns, "D", list(server1="datashield.CNSIM1", server2="datashield.CNSIM2"))
}
}
