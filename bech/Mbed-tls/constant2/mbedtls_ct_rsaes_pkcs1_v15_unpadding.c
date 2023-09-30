#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "mbedtls/bignum.h"
extern int mbedtls_ct_rsaes_pkcs1_v15_unpadding( unsigned char *input,
                                          size_t ilen,
                                          unsigned char *output,
                                          size_t output_max_len,
                                          size_t *olen );
										  
void mbedtls_ct_rsaes_pkcs1_v15_unpadding_wrapper(unsigned char *input,
                                          size_t ilen,
                                          unsigned char *output,
                                          size_t output_max_len,
                                          size_t *olen){

	

	public_in(__SMACK_value(input));
	public_in(__SMACK_value(ilen));
	public_in(__SMACK_value(output));
	public_in(__SMACK_value(output_max_len));
	public_in(__SMACK_value(olen));
	
	public_in(__SMACK_values(olen, 32));




	mbedtls_ct_rsaes_pkcs1_v15_unpadding(input, ilen, output, output_max_len, olen );
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

unsigned char * getinput();
unsigned char * getinput2();
size_t gt1();
size_t gt2();
size_t* gt3();

void mbedtls_ct_rsaes_pkcs1_v15_unpadding_wrapper_t(){

unsigned char *input = getinput();
 size_t ilen = gt1();
 unsigned char *output = getinput2();
 size_t output_max_len  =gt2();
size_t *olen = gt3();

	mbedtls_ct_rsaes_pkcs1_v15_unpadding(input, ilen, output, output_max_len, olen );
}
