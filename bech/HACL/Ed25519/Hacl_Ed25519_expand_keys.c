#include "Hacl_Ed25519.h"
#include "../../ct-verif.h"
void Hacl_Ed25519_expand_keys_wrapper(uint8_t *expanded_keys, uint8_t *private_key)
{
  public_in(__SMACK_value(expanded_keys)); 
  public_in(__SMACK_value(private_key));

  Hacl_Ed25519_expand_keys(expanded_keys, private_key);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();
uint8_t *getpt4();
uint32_t getnum();
uint8_t getnum2();


void Hacl_Ed25519_expand_keys_wrapper_t(){
	uint8_t* expanded_keys = getpt1();
	uint8_t* private_key = getpt2();


	Hacl_Ed25519_expand_keys(expanded_keys, private_key);
}


