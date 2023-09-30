#include "../../ct-verif.h"
#include "ftfp.h"
void fix_cmp_wrapper(fixed op1, fixed op2){
	fix_cmp(op1, op2);
}

fixed getfp();
fixed getfp2();
void fix_cmp_wrapper_t(){
	fixed op1 = getfp();
	 fixed op2 = getfp2();
	fix_cmp(op1, op2);
}
