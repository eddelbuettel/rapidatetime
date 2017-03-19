
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
rapistrptime <- function(x, fmt, tz="") {
    res <- .Call("Rstrptime", x, fmt, tz, PACKAGE="RApiDatetime")
    res
}

##' @rdname rapistrptime
rapiAsPOSIXlt <- function(x, tz="") {
    res <- .Call("asPOSIXlt", x, tz, PACKAGE="RApiDatetime")
    res
}

##' @rdname rapistrptime
rapiAsPOSIXct <- function(x, tz="") {
    res <- .Call("asPOSIXct", x, tz, PACKAGE="RApiDatetime")
    res
}

##' @rdname rapistrptime
rapiFormatPOSIXlt <- function(x, fmt, usetz=FALSE) {
    res <- .Call("formatPOSIXlt", x, fmt, usetz, PACKAGE="RApiDatetime")
    res
}

##' @rdname rapistrptime
rapiPOSIXlt2D <- function(x) {
    res <- .Call("POSIXlt2D", x, PACKAGE="RApiDatetime")
    res
}    

##' @rdname rapistrptime
rapiD2POSIXlt <- function(x) {
    res <- .Call("D2POSIXlt", x, PACKAGE="RApiDatetime")
    res
}    
