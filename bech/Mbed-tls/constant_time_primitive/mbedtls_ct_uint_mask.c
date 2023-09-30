#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
int mbedtls_ct_uint_mask_wrapper( unsigned value ){

	mbedtls_ct_uint_mask( value);
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}


size_t getlen();


void mbedtls_ct_uint_mask_wrapper_t(){
	size_t value = getlen();
	


	mbedtls_ct_uint_mask( value);
}
