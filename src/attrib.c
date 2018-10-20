
#include <R.h>
#include <Rinternals.h>

/* -- from attrib.c ------------------------------------------------------------ */

/* Tweaks here based in part on PR#14934 */
SEXP installAttrib(SEXP vec, SEXP name, SEXP val)
{
    SEXP t = R_NilValue; /* -Wall */

    if(TYPEOF(vec) == CHARSXP)
	error("cannot set attribute on a CHARSXP");
    if (TYPEOF(vec) == SYMSXP)
	error("cannot set attribute on a symbol");
    /* this does no allocation */
    for (SEXP s = ATTRIB(vec); s != R_NilValue; s = CDR(s)) {
	if (TAG(s) == name) {
	    SETCAR(s, val);
	    return val;
	}
	t = s; // record last attribute, if any
    }

    /* The usual convention is that the caller protects,
       but a lot of existing code depends assume that
       setAttrib/installAttrib protects its arguments */
    PROTECT(vec); PROTECT(name); PROTECT(val);
    SEXP s = CONS(val, R_NilValue);
    SET_TAG(s, name);
    if (ATTRIB(vec) == R_NilValue) SET_ATTRIB(vec, s); else SETCDR(t, s);
    UNPROTECT(3);
    return val;
}
