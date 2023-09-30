#include "internal/Hacl_Curve25519_51.h"
#include "../../ct-verif.h"
void Hacl_Curve25519_51_ecdh_wrapper(uint8_t *out, uint8_t *priv, uint8_t *pub)
{
  public_in(__SMACK_value(out)); 
  public_in(__SMACK_value(priv));
  public_in(__SMACK_value(pub));
  public_in(__SMACK_values(pub,32));
  Hacl_Curve25519_51_ecdh(out, priv, pub);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();

void Hacl_Curve25519_51_ecdh_wrapper_t(){
	uint8_t* pub = getpt1();
	uint8_t* priv = getpt2();
  uint8_t* out = getpt3();
	Hacl_Curve25519_51_ecdh(out, priv, pub);
}