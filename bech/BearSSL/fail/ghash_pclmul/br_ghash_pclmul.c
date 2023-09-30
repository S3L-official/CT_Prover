#include "../../ct-verif.h"
#include "inner.h"
void br_ghash_pclmul_wrapper(void *y, const void *h, const void *data, size_t len){
	public_in(__SMACK_value(y));
	public_in(__SMACK_value(h));
	public_in(__SMACK_value(data));
	public_in(__SMACK_value(len));

	public_in(__SMACK_values(data, 32));
	public_in(__SMACK_values(y, 32));

	br_ghash_pclmul(y,h,data, len);
}


void *gety();
 const void *geth();
  const void *getdata();
   size_t getlen();

void br_ghash_pclmul_wrapper_t(){
	void *y = gety();
	 const void *h = geth();
	 const void *data = getdata();
	  size_t len = getlen();
	br_ghash_pclmul(y,h,data, len);
}
