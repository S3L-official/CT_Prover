#include "Hacl_Curve25519_64.h"
#include "../../ct-verif.h"
void Hacl_Curve25519_64_secret_to_public_wrapper(uint8_t *pub, uint8_t *priv)
{
  public_in(__SMACK_value(pub)); 
  public_in(__SMACK_value(priv));
  public_in(__SMACK_values(pub,32));
  Hacl_Curve25519_64_secret_to_public(pub, priv);
}

uint8_t *getpt1();
uint8_t *getpt2();

void Hacl_Curve25519_64_secret_to_public_wrapper_t(){
	uint8_t* pub = getpt1();
	uint8_t* priv = getpt2();
	Hacl_Curve25519_64_secret_to_public(pub, priv);
}