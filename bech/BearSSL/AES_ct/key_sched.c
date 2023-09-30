#include "../../ct-verif.h"
#include "inner.h"
void key_sched_wrapper(uint32_t *comp_skey, const void *key, size_t key_len){
	public_in(__SMACK_value(comp_skey));
	public_in(__SMACK_value(key));
	public_in(__SMACK_value(key_len));

	br_aes_ct_keysched(comp_skey, key, key_len);
}


uint32_t* getpt();
void *getpt2();
size_t getuns();
const void * getkey();

void key_sched_wrapper_t(){
	size_t key_len = getuns();
	uint32_t *comp_skey = getpt();
	const void *key = getkey;
	br_aes_ct_keysched(comp_skey, key, key_len);
}
