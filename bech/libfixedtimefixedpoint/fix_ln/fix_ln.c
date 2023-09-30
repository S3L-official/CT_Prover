#include "../../ct-verif.h"
#include "ftfp.h"
void fix_ln_wrapper(fixed op1){
	fix_ln(op1);
}

fixed getfp();
fixed getfp2();
void fix_ln_wrapper_t(){
	fixed op1 = getfp();
	fix_ln(op1);
}
