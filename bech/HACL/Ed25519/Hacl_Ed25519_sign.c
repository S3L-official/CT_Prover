#include "Hacl_Ed25519.h"
#include "../../ct-verif.h"
void Hacl_Ed25519_sign_wrapper(uint8_t *signature,
  uint8_t *private_key,
  uint32_t msg_len,
  uint8_t *msg)
{
  public_in(__SMACK_value(signature)); 
  public_in(__SMACK_value(private_key));
  public_in(__SMACK_value(msg_len));
  public_in(__SMACK_value(msg));


  public_in(__SMACK_values(signature,64));
  public_in(__SMACK_values(msg,64));
  //n是初始向量IV
  Hacl_Ed25519_sign(signature, private_key, msg_len, msg);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();
uint8_t *getpt4();
uint32_t getnum();
uint8_t getnum2();


void Hacl_Ed25519_sign_wrapper_t(){
	uint8_t* signature = getpt1();
	uint8_t* private_key = getpt2();
  uint8_t* msg = getpt3();
  uint32_t msg_len = getnum();
  

	Hacl_Ed25519_sign(signature, private_key, msg_len, msg);
}


