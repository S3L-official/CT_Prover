#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
int mbedtls_ct_size_mask_ge_wrapper( size_t x,
                                size_t y ){

	


	mbedtls_ct_size_mask_ge( x,y);
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}


size_t getlen();
size_t getlen2();


void mbedtls_ct_size_mask_ge_wrapper_t(){
	size_t x = getlen();
	size_t y = getlen2();
	


	mbedtls_ct_size_mask_ge( x,y);
}
