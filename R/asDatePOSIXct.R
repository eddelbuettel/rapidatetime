##' Conversion from POSIXct to Date
##'
##' This function provides a direct conversion from POSIXct to Date. As of
##' R-3.5.1, conversion from POSIXct to Date creates an intermediate POSIXlt
##' object. This intermediate POSIXlt object uses a non-trivial amount of
##' memory. The direct conversion is more memory efficient, and therefore
##' approximately twice as fast as the current solution in base R.
##'
##' @title Conversion from POSIXct to Date
##' @param x A POSIXct vector
##' @param tz An optional timezone string
##' @return A vector of \code{Date} objects
##' @author Joshua Ulrich
##' @examples
##' p <- .POSIXct(1540181413, "America/Chicago")
##' as.Date(p)                     # Using UTC timezone
##' as.Date(p, "America/Chicago")  # Using local timezone
##' asDatePOSIXct(p)               # Direct, using local timezone
asDatePOSIXct <- function(x, tz="") {
    stopifnot(inherits(x, "POSIXct"))
    tzone <- attr(x, "tzone")
    if (missing(tz) && !is.null(tzone)) {
        tz <- tzone
    }
    res <- .Call("POSIXct2D", x, tz, PACKAGE="RApiDatetime")
    res
}
