#include "Hacl_Poly1305_128.h"
#include "../../ct-verif.h"
void Hacl_Poly1305_128_poly1305_mac_wrapper(uint8_t *tag, uint32_t len, uint8_t *text, uint8_t *key)
{
  public_in(__SMACK_value(tag)); 
  public_in(__SMACK_value(len));
  public_in(__SMACK_value(text));
  public_in(__SMACK_value(key));


  public_in(__SMACK_values(tag,64));
  public_in(__SMACK_values(text,64));
  //n是初始向量IV
  Hacl_Poly1305_128_poly1305_mac(tag,len,text,key);
}

uint8_t *getpt1();
uint8_t *getpt2();
uint8_t *getpt3();
uint8_t *getpt4();
uint32_t getnum();
uint8_t getnum2();


void Hacl_Poly1305_128_poly1305_mac_wrapper_t(){
	uint8_t* tag = getpt1();
	uint8_t* text = getpt2();
  uint8_t* key = getpt3();
  uint8_t len = getnum2();
  

	Hacl_Poly1305_128_poly1305_mac(tag,len,text,key);
}


