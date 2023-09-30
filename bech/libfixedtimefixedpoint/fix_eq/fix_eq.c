#include "../../ct-verif.h"
#include "ftfp.h"
void fix_eq_wrapper(fixed op1, fixed op2){
	fix_eq(op1, op2);
}

fixed getfp();
fixed getfp2();
void fix_eq_wrapper_t(){
	fixed op1 = getfp();
	 fixed op2 = getfp2();
	fix_eq(op1, op2);
}
