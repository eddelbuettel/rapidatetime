
##' Wrappers for C-level \code{strptime} etc functions
##'
##' These functions provide (additional) entry points from R to the
##' C-level function of the R API. They are provided here mainly for
##' testing (the C level access) as R itself exposes the function
##' @title R Wrappers for \code{strptime}, \code{asPOSIXlt} etc
##' @param x Vector with one or character elements to be parsed
##' @param fmt The format string, see \code{help("strptime")} for
##'  details.
##' @param tz An optional timezone string
##' @param usetz An optional logical variable selecting use of the timezone.
##' @return A vector with \code{POSIXlt} datetime objects
##' @author Dirk Eddelbuettel
##' @examples
##' op <- options(digits.secs=6)
##' x <- rapistrptime("2017-01-02 03:04:05.678", "%Y-%m-%d %H:%M:%OS")
##' format(x)
rapistrptime <- function(x, fmt, tz="") {
    res <- .Call(Rstrptime, x, fmt, tz)
    res
}

##' @rdname rapistrptime
##' @examples
##' rapiAsPOSIXlt(as.POSIXct(x))
rapiAsPOSIXlt <- function(x, tz="") {
    res <- .Call(asPOSIXlt, x, tz)
    res
}

##' @rdname rapistrptime
##' @examples
##' rapiAsPOSIXct(x)
rapiAsPOSIXct <- function(x, tz="") {
    res <- .Call(asPOSIXct, x, tz)
    res
}

##' @rdname rapistrptime
##' @examples
##' rapiFormatPOSIXlt(x, "%Y-%b-%d %H:%M:%OS")
##' options(op)
rapiFormatPOSIXlt <- function(x, fmt, usetz=FALSE) {
    res <- .Call(formatPOSIXlt, x, fmt, usetz)
    res
}

##' @rdname rapistrptime
##' @examples rapiPOSIXlt2D(x)
rapiPOSIXlt2D <- function(x) {
    res <- .Call(POSIXlt2D, x)
    res
}

##' @rdname rapistrptime
##' @examples rapiD2POSIXlt(as.Date("2017-01-02"))
rapiD2POSIXlt <- function(x) {
    res <- .Call(D2POSIXlt, x)
    res
}
