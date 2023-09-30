#include "../../ct-verif.h"
#include <openssl/aes.h>
void encrypt_wrapper(const unsigned char *in, unsigned char *out,
                 const AES_KEY *key){
	public_in(__SMACK_value(in));
	public_in(__SMACK_value(out));
	public_in(__SMACK_value(key));

	public_in(__SMACK_values(in, 16));
    public_in(__SMACK_values(out, 16));

    public_in(__SMACK_value(key->rd_key));
    public_in(__SMACK_value(key->rounds));

	AES_encrypt(in, out, key);
}

const unsigned char *getin();
 unsigned char *getout();
                 const AES_KEY *getkey();


void encrypt_wrapper_t(){
	const unsigned char *in = getin();
     unsigned char *out = getout();

                 const AES_KEY *key = getkey();
	AES_encrypt(in, out, key);
}