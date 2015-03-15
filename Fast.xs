#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"


MODULE = Bit::Fast		PACKAGE = Bit::Fast		

int
popcount (v)
        unsigned int v
    CODE:
        RETVAL = __builtin_popcount(v);
    OUTPUT:
        RETVAL

int
popcountl (v)
        unsigned long v
    CODE:
        RETVAL = __builtin_popcountl(v);
    OUTPUT:
        RETVAL
