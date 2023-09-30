#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "mbedtls/bignum.h"

int mbedtls_ct_mpi_uint_cond_assign_wrapper( size_t n,
                                      mbedtls_mpi_uint *dest,
                                      const mbedtls_mpi_uint *src,
                                      unsigned char condition){
	
		public_in(__SMACK_value(n));
		public_in(__SMACK_value(dest));
		public_in(__SMACK_value(src));
		
	mbedtls_ct_mpi_uint_cond_assign( n, dest, src, condition );
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}


mbedtls_mpi_uint getv();
size_t getsize_t();
mbedtls_mpi_uint * getpt1();
const mbedtls_mpi_uint * getpt2();
unsigned char getcondition();

void mbedtls_ct_mpi_uint_cond_assign_wrapper_t(){
	size_t n = getsize_t();
    mbedtls_mpi_uint *dest = getpt1();
    const mbedtls_mpi_uint *src = getpt2();
    unsigned char condition = getcondition();
	
	
	mbedtls_ct_mpi_uint_cond_assign( n, dest, src, condition );
}
