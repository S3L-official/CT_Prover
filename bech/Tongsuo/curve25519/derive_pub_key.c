#include "../../ct-verif.h"
#include "../Tongsuo/crypto/ec/curve25519.c"
void derive_pub_key_wrapper(uint8_t out_shared_key[32], const uint8_t private_key[32],
            const uint8_t peer_public_value[32]){
	public_in(__SMACK_value(out_shared_key));
	public_in(__SMACK_value(private_key));
	public_in(__SMACK_value(peer_public_value));

	public_in(__SMACK_values(out_shared_key, 32));
    public_in(__SMACK_values(peer_public_value, 32));


	ossl_x25519_public_from_private(out_shared_key, private_key);
}




void derive_pub_key_wrapper_t(){
	uint8_t out_shared_key[32] =  {0}; 
    const uint8_t private_key[32] = {1};
    const uint8_t peer_public_value[32] = {2};
	ossl_x25519_public_from_private(out_shared_key, private_key);
}