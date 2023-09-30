#include "Hacl_HMAC.h"
#include "../../ct-verif.h"
void Hacl_HMAC_compute_sha2_512_wrapper(  uint8_t *dst,
  uint8_t *key,
  uint32_t key_len,
  uint8_t *data,
  uint32_t data_len)
{
  public_in(__SMACK_value(dst)); 
  public_in(__SMACK_value(key));
  public_in(__SMACK_value(key_len));
  public_in(__SMACK_value(data));
  public_in(__SMACK_value(data_len));

  public_in(__SMACK_values(dst,64));
  //n是初始向量IV
  Hacl_HMAC_compute_sha2_512(dst, key,key_len,data, data_len);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();
uint8_t *getpt4();
uint32_t getnum();
void Hacl_HMAC_compute_sha2_512_wrapper_t(){
	uint8_t* dst = getpt1();
	uint8_t* key = getpt2();
  uint8_t* data = getpt3();

  uint32_t data_len = getnum();
  uint32_t key_len = getnum();

	Hacl_HMAC_compute_sha2_512(dst, key,key_len,data, data_len);
}
