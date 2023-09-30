#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
int mbedtls_ct_memcmp_wrapper( const void *a,
                       const void *b,
                       size_t n ){

	

	public_in(__SMACK_value(a));
	public_in(__SMACK_value(b));
	public_in(__SMACK_value(n));
	


	mbedtls_ct_memcmp(a,b,n);
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

const void* getpt1();
const void* getpt2();
size_t getlen();


void mbedtls_ct_memcmp_wrapper_t(){
	const void *a =getpt1();
                       const void *b =getpt2();
                       size_t n = getlen();
	


	mbedtls_ct_memcmp(a,b,n);
}
