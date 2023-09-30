#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "mbedtls/bignum.h"

int mbedtls_ct_mpi_uint_mask_wrapper( mbedtls_mpi_uint  value){

		
	mbedtls_ct_mpi_uint_mask( value );
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

const void* getpt1();
const void* getpt2();
mbedtls_mpi_uint getv();


void mbedtls_ct_mpi_uint_mask_wrapper_t(){
	mbedtls_mpi_uint value = getv();
	
	mbedtls_ct_mpi_uint_mask( value );
}
