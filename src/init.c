#include <Rconfig.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>


/*  function declarations -- could be in external header file if used  */
/*  by functions in anotherfile in this package                        */
SEXP strptime(SEXP objarg, SEXP fmtarg, SEXP tzarg);
SEXP asPOSIXct(SEXP objarg, SEXP tzarg);
SEXP formatPOSIXlt(SEXP objarg, SEXP fmtarg, SEXP tzarg);


/* definition of functions provided for .Call() 			*/
static const R_CallMethodDef callMethods[] = {
    { "strptime",       	(DL_FUNC) &strptime,                3 },
    { "asPOSIXct",       	(DL_FUNC) &asPOSIXct,               2 },
    { "formatPOSIXlt",       	(DL_FUNC) &formatPOSIXlt,           3 },
    { NULL,                	NULL,                               0 }
};


/* functions being called when package is loaded -- used to register 	*/
/* the functions we are exporting here					*/
void R_init_RApiDatetime(DllInfo *info) {

    /* used by external packages linking to internal package code from C */
    R_RegisterCCallable("RApiDatetime", "strptime",      (DL_FUNC) &strptime);
    R_RegisterCCallable("RApiDatetime", "asPOSIXct",     (DL_FUNC) &asPOSIXct);
    R_RegisterCCallable("RApiDatetime", "formatPOSIXlt", (DL_FUNC) &formatPOSIXlt);

    R_registerRoutines(info,
                       NULL,		/* slot for .C */
                       callMethods, 	/* slot for .Call */
                       NULL,            /* slot for .Fortran */
                       NULL);   	/* slot for .External */

    R_useDynamicSymbols(info, TRUE);    /* controls visibility */ 

}




