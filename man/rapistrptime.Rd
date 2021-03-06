% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datetime.R
\name{rapistrptime}
\alias{rapistrptime}
\alias{rapiAsPOSIXlt}
\alias{rapiAsPOSIXct}
\alias{rapiFormatPOSIXlt}
\alias{rapiPOSIXlt2D}
\alias{rapiD2POSIXlt}
\title{R Wrappers for \code{strptime}, \code{asPOSIXlt} etc}
\usage{
rapistrptime(x, fmt, tz = "")

rapiAsPOSIXlt(x, tz = "")

rapiAsPOSIXct(x, tz = "")

rapiFormatPOSIXlt(x, fmt, usetz = FALSE)

rapiPOSIXlt2D(x)

rapiD2POSIXlt(x)
}
\arguments{
\item{x}{Vector with one or character elements to be parsed}

\item{fmt}{The format string, see \code{help("strptime")} for
details.}

\item{tz}{An optional timezone string}

\item{usetz}{An optional logical variable selecting use of the timezone.}
}
\value{
A vector with \code{POSIXlt} datetime objects
}
\description{
Wrappers for C-level \code{strptime} etc functions
}
\details{
These functions provide (additional) entry points from R to the
C-level function of the R API. They are provided here mainly for
testing (the C level access) as R itself exposes the function
}
\examples{
op <- options(digits.secs=6)
x <- rapistrptime("2017-01-02 03:04:05.678", "\%Y-\%m-\%d \%H:\%M:\%OS")
format(x)
rapiAsPOSIXlt(as.POSIXct(x))
rapiAsPOSIXct(x)
rapiFormatPOSIXlt(x, "\%Y-\%b-\%d \%H:\%M:\%OS")
options(op)
rapiPOSIXlt2D(x)
rapiD2POSIXlt(as.Date("2017-01-02"))
}
\author{
Dirk Eddelbuettel
}
