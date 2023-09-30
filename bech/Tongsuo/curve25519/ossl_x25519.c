#include "../../ct-verif.h"
#include "../Tongsuo/crypto/ec/curve25519.c"
void ossl_x25519_wrapper(uint8_t out_shared_key[32], const uint8_t private_key[32],
            const uint8_t peer_public_value[32]){
	public_in(__SMACK_value(out_shared_key));
	public_in(__SMACK_value(private_key));
	public_in(__SMACK_value(peer_public_value));

	public_in(__SMACK_values(out_shared_key, 32));
    public_in(__SMACK_values(peer_public_value, 32));


	ossl_x25519(out_shared_key, private_key, peer_public_value);
}




void ossl_x25519_wrapper_t(){
	uint8_t out_shared_key[32] =  {0}; 
    const uint8_t private_key[32] = {1};
    const uint8_t peer_public_value[32] = {2};
	ossl_x25519(out_shared_key, private_key, peer_public_value);
}