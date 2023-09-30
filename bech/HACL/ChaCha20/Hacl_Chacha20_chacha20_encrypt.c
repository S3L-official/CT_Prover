#include "internal/Hacl_Chacha20.h"
#include "../../ct-verif.h"
void Hacl_Chacha20_chacha20_encrypt_wrapper(uint32_t len,
  uint8_t *out,
  uint8_t *cipher,
  uint8_t *key,
  uint8_t *n,
  uint32_t ctr)
{
  public_in(__SMACK_value(len)); 
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(cipher));
  public_in(__SMACK_value(key));
  public_in(__SMACK_value(n));
  public_in(__SMACK_value(ctr));

  public_in(__SMACK_values(out,64));
  //n是初始向量IV
  Hacl_Chacha20_chacha20_encrypt(len, out,cipher,key,n,ctr);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();
uint8_t *getpt4();
uint32_t getnum();
void Hacl_Chacha20_chacha20_encrypt_wrapper_t(){
	uint8_t* out = getpt1();
	uint8_t* cipher = getpt2();
  uint8_t* key = getpt3();
  uint8_t* n = getpt4();
  uint32_t len = getnum();
  uint32_t ctr = getnum();

	Hacl_Chacha20_chacha20_encrypt(len, out,cipher,key,n,ctr);
}
