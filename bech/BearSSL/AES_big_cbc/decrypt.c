#include "../../ct-verif.h"
#include "../BearSSL/src/inner.h"


void decrypt_wrapper(unsigned num_rounds, const uint32_t *skey, void *data){
	public_in(__SMACK_value(num_rounds));
	public_in(__SMACK_value(skey));
	public_in(__SMACK_value(data));

	public_in(__SMACK_values(data, 16));

	br_aes_big_decrypt(num_rounds, skey, data);
}


void decrypt_wrapper_t(){
	unsigned num_rounds = getuns();
	const uint32_t *skey = getpt();
	void *data = getpt2();

	br_aes_big_decrypt(num_rounds, skey, data);
}

