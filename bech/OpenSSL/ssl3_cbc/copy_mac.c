#include <smack.h>

#include "../ct-verif.h"

#include "../ssl3_cbc_copy_mac.c"

void copy_mac_wrapper(unsigned char *out,
                               unsigned char *data,
                               unsigned int length,
                               unsigned md_size, unsigned orig_len){

  // pointer _values_ are public, maybe not the contents
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(data));

  // these lengths are all public
  public_in(__SMACK_value(length));
  public_in(__SMACK_value(md_size));
  public_in(__SMACK_value(orig_len));

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, 0, NULL };

  return ssl3_cbc_copy_mac(out,&rec_obj,md_size,orig_len);
}


void tmp(unsigned char *out,
                               unsigned char *data,
                               unsigned int length,
                               unsigned md_size, unsigned orig_len){

  // pointer _values_ are public, maybe not the contents

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, 0, NULL };

  return ssl3_cbc_copy_mac(out,&rec_obj,md_size,orig_len);
}

extern unsigned char *getchar();
extern unsigned char *getchar2();

void copy_mac_wrapper_t(){

  unsigned char *out = getchar();
                               unsigned char *data = getchar2();
                               unsigned int length = 128;
                               unsigned md_size = 64;
                                unsigned orig_len = 64;
                                
    return tmp(out, data, length, md_size, orig_len);

}