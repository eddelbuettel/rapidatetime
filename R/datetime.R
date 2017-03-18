##' Wrapper for C-level \code{strptime} function
##'
##' This function provides an entry point from R to the
##' \code{strptime} function of the R API. It is use mainly for
##' testing as R itself exposes the function.
##' @title R Wrapper for \code{strptime}
##' @param x Vector with one or character elements to be parsed
##' @param fmt The format string, see \code{help("strptime")} for
##'  details.
##' @param tz An optional timezone string
##' @return A vector with \code{POSIXlt} datetime objects
##' @author Dirk Eddelbuettel
rapistrptime <- function(x, fmt, tz="") {
    res <- .Call("strptime", x, fmt, tz)
    res
}

##' Wrapper for C-level \code{asPOSIXct} function
##'
##' This function provides an entry point from R to the
##' \code{asPOSIXct} function of the R API. It is use mainly for
##' testing as R itself exposes the function.
##' @title R Wrapper for \code{strptime}
##' @param x Vector with R objects to be converted to \code{POSIXct}
##' @param tz An optional timezone string
##' @return A vector with \code{POSIXct} datetime objects
##' @author Dirk Eddelbuettel
rapiAsPOSIXct <- function(x, tz="") {
    res <- .Call("asPOSIXct", x, tz)
    res
}

