#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

MODULE = Digest::PerlHash		PACKAGE = Digest::PerlHash		

int perlhash(s)
		char* s;
	PROTOTYPE: $
	CODE:
		U32 hash;	
		STRLEN klen = strlen(s);
		PERL_HASH(hash, s, klen);
		RETVAL = hash;
	OUTPUT:
		RETVAL
