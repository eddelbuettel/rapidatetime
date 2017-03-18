#!/usr/bin/Rscript

#Sys.setenv(TZ="America/Chicago")
options(digits.secs=6)
library(RApiDatetime)
x <- format(as.POSIXct(Sys.time()+0:1, origin="1970-01-01"))

X <- rapistrptime(x, "%Y-%m-%d %H:%M:%OS", "")
#print(X)
#print(str(X))
#print(X)
#print(rapiAsPOSIXct(X))

#print(str(X))		## bombs in format.POSIXlt
#print(X) 		## bombs in format.POSIXlt

print(.Call("formatPOSIXlt", X, "%Y-%m-%d", FALSE, PACKAGE="RApiDatetime"))

print(.Call("asPOSIXct", X, "UTC", PACKAGE="RApiDatetime"))

x2 <- .Call("asPOSIXct", X, "UTC", PACKAGE="RApiDatetime")
str(x2)
