#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "mbedtls/bignum.h"
void mbedtls_mpi_lt_mpi_ct_wrapper(const mbedtls_mpi *X,
                           const mbedtls_mpi *Y,
                           unsigned *ret   ){

	

	public_in(__SMACK_value(X));
	public_in(__SMACK_value(Y));
	public_in(__SMACK_value(ret));

	public_in(__SMACK_value(X->private_n));
	public_in(__SMACK_value(X->private_p));
	public_in(__SMACK_value(X->private_s));

	public_in(__SMACK_value(Y->private_n));
	public_in(__SMACK_value(Y->private_p));
	public_in(__SMACK_value(Y->private_s));


	mbedtls_mpi_lt_mpi_ct(X, Y, ret);
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

	const mbedtls_mpi *getA();
const mbedtls_mpi *getB();
unsigned* getz();

void mbedtls_mpi_lt_mpi_ct_wrapper_t(){

	const mbedtls_mpi *X = getA();
                           const mbedtls_mpi *Y = getB();
                           unsigned *ret = getz();

	mbedtls_mpi_lt_mpi_ct(X, Y, ret);
}
