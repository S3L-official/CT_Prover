#include <smack.h>

#include "../ct-verif.h"

#include "../ssl3_cbc_remove_padding.c"

int remove_padding_wrapper(unsigned char *data,
									                  unsigned int length,
                                    unsigned int block_size,
                                    unsigned int mac_size){

  // pointer _values_ are public, maybe not the contents
  public_in(__SMACK_value(data));

  // these lengths are all public
  public_in(__SMACK_value(length));
  public_in(__SMACK_value(block_size));
  public_in(__SMACK_value(mac_size));

  // s is actually not used in the function
  SSL s_obj = { NULL, 0, NULL, NULL, 0};
  const SSL *s = &s_obj;

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, 0, NULL };

  return ssl3_cbc_remove_padding(s,&rec_obj,block_size,mac_size);
}

int tmp(unsigned char *data,
	unsigned int length,
  unsigned int block_size,
  unsigned int mac_size){


  SSL s_obj = { NULL, 0, NULL, NULL, 0};
  const SSL *s = &s_obj;

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, 0, NULL };
  return ssl3_cbc_remove_padding(s,&rec_obj,block_size,mac_size);
}

extern unsigned char *getchar();

int remove_padding_wrapper_t(){

  unsigned char *data = getchar();
	unsigned int length = 64;
  unsigned int block_size = 32;
  unsigned int mac_size = 128;


  return tmp(data, length, block_size, mac_size);
}
