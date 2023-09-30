#include "internal/Hacl_Curve25519_51.h"
#include "../../ct-verif.h"
void Hacl_Curve25519_51_scalarmult_wrapper(uint8_t *shared, uint8_t *my_priv, uint8_t *their_pub)
{
  public_in(__SMACK_value(shared)); 
  public_in(__SMACK_value(my_priv));
  public_in(__SMACK_value(their_pub));
  public_in(__SMACK_values(their_pub,32));
  public_in(__SMACK_values(shared,32));
  Hacl_Curve25519_51_scalarmult(shared, my_priv,their_pub);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();

void Hacl_Curve25519_51_scalarmult_wrapper_t(){
	uint8_t* shared = getpt1();
	uint8_t* my_priv = getpt2();
  uint8_t* their_pub = getpt3();
	Hacl_Curve25519_51_scalarmult(shared, my_priv,their_pub);
}