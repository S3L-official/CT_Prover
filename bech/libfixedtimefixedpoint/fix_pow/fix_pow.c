#include "../../ct-verif.h"
#include "ftfp.h"
void fix_pow_wrapper(fixed op1, fixed op2){
	fix_pow(op1, op2);
}

fixed getfp();
fixed getfp2();
void fix_pow_wrapper_t(){
	fixed op1 = getfp();
	 fixed op2 = getfp2();
	fix_pow(op1, op2);
}