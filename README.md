## RApiDatetime [![Build Status](https://travis-ci.org/eddelbuettel/rapidatetime.svg)](https://travis-ci.org/eddelbuettel/rapidatetime) [![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html) [![Code Coverage](https://codecov.io/gh/eddelbuettel/rapidatetime/graph/badge.svg)](https://codecov.io/gh/eddelbuettel/rapidatetime)

### About

This package provides C-level date / datetime functionality taken from the R
sources and made available for use by other packages.

It is useful if you are writing C (or C++) code in an R package which needs
to parse, format or transform date(time) objects, and want to do this at the 
compiled level, i.e. fasterthan calling back to the corresponding R level 
function could do it.

### Copyrights

Copyrights are held by the respective authors, in particular the R Core Team
for the included code from R, and Dirk Eddelbuettel for any modificatons,
integgration and the remainder of the package.

### Author

Dirk Eddelbuettel for this package

R Core for the underlying code from R

### License

GPL (>= 2)

