
rapistrptime <- function(x, fmt, tz="") {
    #print(x)
    #print(fmt)
    #print(tz)
    res <- .Call("strptime", x, fmt, tz, PACKAGE="RApiDatetime")
    res
}

