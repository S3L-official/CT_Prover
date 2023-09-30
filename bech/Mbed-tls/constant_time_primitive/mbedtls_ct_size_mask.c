#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
int mbedtls_ct_size_mask_wrapper( size_t value){

	

	


	mbedtls_ct_size_mask( value );
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}


size_t getlen();
size_t getlen2();


void mbedtls_ct_size_mask_wrapper_t(){
	size_t value = getlen2();
	


	mbedtls_ct_size_mask( value );
}
