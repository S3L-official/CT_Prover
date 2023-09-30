#include "Hacl_Ed25519.h"
#include "../../ct-verif.h"
void Hacl_Ed25519_secret_to_public_wrapper(uint8_t *public_key, uint8_t *private_key)
{
  public_in(__SMACK_value(public_key)); 
  public_in(__SMACK_value(private_key));

  public_in(__SMACK_values(public_key,32));

  //n是初始向量IV
  Hacl_Ed25519_secret_to_public(public_key, private_key);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();
uint8_t *getpt4();
uint32_t getnum();
uint8_t getnum2();


void Hacl_Ed25519_secret_to_public_wrapper_t(){
	uint8_t* public_key = getpt1();
	uint8_t* private_key = getpt2();

	Hacl_Ed25519_secret_to_public(public_key, private_key);
}


