#include "../../ct-verif.h"
#include "../BearSSL/src/inner.h"

void key_schedule_wrapper(uint32_t *skey, const void *key, size_t key_len){
	public_in(__SMACK_value(skey));
	public_in(__SMACK_value(key));
	public_in(__SMACK_value(key_len));


	br_aes_keysched(skey, key, key_len);
}

size_t getsize();
const void* getptv();

void key_schedule_wrapper_t(){
	const void *key = getptv();
	const uint32_t *skey = getpt();
	size_t key_len = getsize();

	br_aes_keysched(skey, key, key_len);
}