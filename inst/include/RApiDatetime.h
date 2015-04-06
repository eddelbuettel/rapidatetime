/* -*- mode: C; c-indent-level: 4; c-basic-offset: 4; indent-tabs-mode: nil; -*- */
/*
 *  RApiDatetime -- Packge to provide Serialization as in the R API 
 *
 *  Copyright (C) 2014  Dirk Eddelbuettel 
 *
 *  This file is part of RApiDatetime.
 *
 *  RApiDatetime is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  RApiDatetime is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with RApiDatetime.  If not, see <http://www.gnu.org/licenses/>.
 */


/* This header file provides the interface used by other packages, */
/* and should be included once per package.                        */

#ifndef _R_Api_Datetime_API_h_
#define _R_Api_Datetime_API_h_

/* number of R header files (possibly listing too many) */
#include <R.h>
#include <Rinternals.h>
#include <Rdefines.h>
#include <Rconfig.h>
#include <R_ext/Rdynload.h>

#ifdef HAVE_VISIBILITY_ATTRIBUTE
    # define attribute_hidden __attribute__ ((visibility ("hidden")))
#else
    # define attribute_hidden
#endif

#ifdef __cplusplus
extern "C" {
#endif

/* provided the interface for the function exported 	*/
/* in ../src/init.c via R_RegisterCCallable()		*/

SEXP /*attribute_hidden*/ strptime(SEXP x, SEXP y, SEPX x) {
static SEXP(*fun)(SEXP,SEXP,SEXP) = 
        (SEXP(*)(SEXP)) R_GetCCallable("RApiDatetime", "strptime");
    return fun(x);
}


#ifdef __cplusplus
}
#endif

#endif /* _R_Api_Serialize_API_h */

