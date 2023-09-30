#include "../../ct-verif.h"
#include "inner.h"
void run_wrapper(const void *key,
	const void *iv, uint32_t cc, void *data, size_t len){
	public_in(__SMACK_value(key));
	public_in(__SMACK_value(iv));
	public_in(__SMACK_value(cc));
	public_in(__SMACK_value(data));
	public_in(__SMACK_value(len));

	public_in(__SMACK_values(data, 32));
	public_in(__SMACK_values(iv, 32));

	br_chacha20_ct_run(key, iv, cc,data, len);
}


const int32_t getint32();
const size_t getsize_t();
void * getvoid5();



void run_wrapper_t(){

	const void *key = getvoid1();
	const void *iv = getvoid2();
	 int32_t cc  =32;
	 void *data  = getvoid5();
	 size_t len = getsize_t();

	br_chacha20_ct_run(key, iv, cc,data, len);
}
