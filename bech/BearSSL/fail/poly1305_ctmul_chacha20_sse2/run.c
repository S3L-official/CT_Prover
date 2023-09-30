#include "../../ct-verif.h"
#include "inner.h"
void run_wrapper(const void *key, const void *iv,
	void *data, size_t len, const void *aad, size_t aad_len,
	void *tag, br_chacha20_run ichacha, int encrypt){
	public_in(__SMACK_value(key));
	public_in(__SMACK_value(iv));
	public_in(__SMACK_value(data));
	public_in(__SMACK_value(len));
	public_in(__SMACK_value(aad));
	public_in(__SMACK_value(aad_len));
	public_in(__SMACK_value(tag));
	public_in(__SMACK_value(encrypt));


	public_in(__SMACK_values(data, 32));
	public_in(__SMACK_values(iv, 32));
	public_in(__SMACK_value(aad, 32));


	br_poly1305_ctmul_run(key, iv, data, len, aad, aad_len, tag, br_chacha20_sse2_run, encrypt);
}


const int32_t getint32();
const size_t getsize_t();
void * getvoid5();
void * getvoid6();



void run_wrapper_t(){

const void *key = getvoid1();
 const void *iv = getvoid2();

	void *data = getvoid5();
	 size_t len = 32;
	  const void *aad = getvoid3();
	   size_t aad_len = 32;
	void *tag = getvoid6();
	int encrypt = 1;

	br_poly1305_ctmul_run(key, iv, data, len, aad, aad_len, tag, br_chacha20_sse2_run, encrypt);
}


