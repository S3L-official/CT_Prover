#include "../../ct-verif.h"
#include <openssl/aes.h>
void decrypt_wrapper(const unsigned char *in, unsigned char *out,
                 const AES_KEY *key){
	public_in(__SMACK_value(in));
	public_in(__SMACK_value(out));
	public_in(__SMACK_value(key));

	public_in(__SMACK_values(in, 16));
    public_in(__SMACK_values(out, 16));

    public_in(__SMACK_value(key->rd_key));
    public_in(__SMACK_value(key->rounds));

	AES_decrypt(in, out, key);
}

const unsigned char *getin();
 unsigned char *getout();
                 const AES_KEY getkey();

void vfct_tmp(unsigned int* rd_key, const unsigned char *in, unsigned char *out,
                 const AES_KEY *key){
	AES_decrypt(in, out, key);
}


void decrypt_wrapper_t(){
	const unsigned char *in = getin();
     unsigned char *out = getout();
	const AES_KEY k = getkey();


    const AES_KEY *key = &k;
	unsigned int* rd_key = key->rd_key;
	vfct_tmp(rd_key, in, out, key);
}