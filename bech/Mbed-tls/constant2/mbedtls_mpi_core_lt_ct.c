#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "constant_time_internal.h"
#include "mbedtls/bignum.h"
void mbedtls_mpi_core_lt_ct_wrapper(const mbedtls_mpi_uint *A,
                                 const mbedtls_mpi_uint *B,
                                 size_t limbs  ){

	

	public_in(__SMACK_value(A));
	public_in(__SMACK_value(B));
	public_in(__SMACK_value(limbs));




	mbedtls_mpi_core_lt_ct(A, B , limbs );
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

	const mbedtls_mpi_uint *getA();
const mbedtls_mpi_uint *getB();
size_t getz();

void mbedtls_mpi_core_lt_ct_wrapper_t(){

	const mbedtls_mpi_uint *A = getA();
                                 const mbedtls_mpi_uint *B = getB();
                                 size_t limbs = getz();

	mbedtls_mpi_core_lt_ct(A, B , limbs );
}
