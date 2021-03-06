% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSConnection.R
\name{dsDisconnect}
\alias{dsDisconnect}
\title{Disconnect (close) a connection}
\usage{
dsDisconnect(conn, save = NULL)
}
\arguments{
\item{conn}{An object inheriting from \code{\link{DSConnection-class}}.}

\item{save}{Save DataSHIELD session in data repository with provided identifier string.}
}
\description{
This closes the connection, discards all pending work, and frees
resources (e.g., memory, sockets).

\Sexpr[results=rd,stage=render]{DSI:::methods_as_rd("dsDisconnect")}
}
\examples{
\dontrun{
con <- dbConnect(DSOpal::Opal(), "server1",
  "username", "password", "https://opal.example.org")
dsDisconnect(con)
}
}
\seealso{
Other DSConnection generics: \code{\link{DSConnection-class}},
  \code{\link{dsAggregate}}, \code{\link{dsAssignExpr}},
  \code{\link{dsAssignTable}}, \code{\link{dsGetInfo}},
  \code{\link{dsHasTable}}, \code{\link{dsIsAsync}},
  \code{\link{dsListMethods}},
  \code{\link{dsListPackages}},
  \code{\link{dsListSymbols}}, \code{\link{dsListTables}},
  \code{\link{dsListWorkspaces}}, \code{\link{dsRmSymbol}},
  \code{\link{dsRmWorkspace}},
  \code{\link{dsSaveWorkspace}}
}
\concept{DSConnection generics}
