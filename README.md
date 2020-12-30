## RApiDatetime: R Date and Datetime Functionality at the C Level

[![Build Status](https://travis-ci.org/eddelbuettel/rapidatetime.svg)](https://travis-ci.org/eddelbuettel/rapidatetime) 
[![CI](https://github.com/eddelbuettel/rapidatetime/workflows/ci/badge.svg)](https://github.com/eddelbuettel/rapidatetime/actions?query=workflow%3Aci)
[![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html) 
[![CRAN](http://www.r-pkg.org/badges/version/RApiDatetime)](https://cran.r-project.org/package=RApiDatetime) 
[![Downloads](http://cranlogs.r-pkg.org/badges/RApiDatetime?color=brightgreen)](http://www.r-pkg.org/pkg/RApiDatetime) 
[![Dependencies](https://tinyverse.netlify.com/badge/RApiDatetime)](https://cran.r-project.org/package=RApiDatetime) 
[![Code Coverage](https://codecov.io/gh/eddelbuettel/rapidatetime/graph/badge.svg)](https://codecov.io/gh/eddelbuettel/rapidatetime) 
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/rapidatetime)](https://github.com/eddelbuettel/rapidatetime)

### About

This package provides C-level date / datetime functionality taken from the R
sources and made available for use by other packages.

It is useful if you are writing C (or C++) code in an R package which needs
to parse, format or transform date(time) objects, and want to do this at the 
compiled level, i.e. faster than calling back to the corresponding R level 
function could do it.

### Installation

The package is now on [CRAN](https://cran.r-project.org) and can be installed
via a standard

```r
install.packages("RApiDatetime")
```

### Copyrights

Copyrights are held by the respective authors, in particular the R Core Team
for the included code from R, and Dirk Eddelbuettel for any modificatons,
integration and the remainder of the package.

### Author

Dirk Eddelbuettel for this package

R Core for the underlying code from R

### License

GPL (>= 2)

