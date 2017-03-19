#include <Rconfig.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>


/*  function declarations -- could be in external header file if used  */
/*  by functions in anotherfile in this package                        */
SEXP asPOSIXlt(SEXP sxparg, SEXP tzarg);
SEXP asPOSIXct(SEXP sxparg, SEXP tzarg);
SEXP formatPOSIXlt(SEXP objarg, SEXP fmtarg, SEXP tzarg);
SEXP Rstrptime(SEXP objarg, SEXP fmtarg, SEXP tzarg);
SEXP POSIXlt2D(SEXP sxparg);
SEXP D2POSIXlt(SEXP argsxp);


/* definition of functions provided for .Call() 			*/
static const R_CallMethodDef callMethods[] = {
    { "asPOSIXlt",       	(DL_FUNC) &asPOSIXlt,               2 },
    { "asPOSIXct",       	(DL_FUNC) &asPOSIXct,               2 },
    { "formatPOSIXlt",       	(DL_FUNC) &formatPOSIXlt,           3 },
    { "Rstrptime",       	(DL_FUNC) &Rstrptime,               3 },
    { "POSIXlt2D",       	(DL_FUNC) &POSIXlt2D,               1 },
    { "D2POSIXlt",       	(DL_FUNC) &D2POSIXlt,               1 },
    { NULL,                	NULL,                               0 }
};


/* functions being called when package is loaded -- used to register 	*/
/* the functions we are exporting here					*/
void R_init_RApiDatetime(DllInfo *info) {

    /* used by external packages linking to internal package code from C */
    R_RegisterCCallable("RApiDatetime", "asPOSIXlt",     (DL_FUNC) &asPOSIXlt);
    R_RegisterCCallable("RApiDatetime", "asPOSIXct",     (DL_FUNC) &asPOSIXct);
    R_RegisterCCallable("RApiDatetime", "formatPOSIXlt", (DL_FUNC) &formatPOSIXlt);
    R_RegisterCCallable("RApiDatetime", "Rstrptime",     (DL_FUNC) &Rstrptime);
    R_RegisterCCallable("RApiDatetime", "POSIXlt2D",     (DL_FUNC) &POSIXlt2D);
    R_RegisterCCallable("RApiDatetime", "D2POSIXlt",     (DL_FUNC) &D2POSIXlt);

    R_registerRoutines(info,
                       NULL,		/* slot for .C */
                       callMethods, 	/* slot for .Call */
                       NULL,            /* slot for .Fortran */
                       NULL);   	/* slot for .External */

    R_useDynamicSymbols(info, TRUE);    /* controls visibility */ 

}




