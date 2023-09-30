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

	const mbedtls_mpi getA();
const mbedtls_mpi getB();
unsigned getz();

void  vfct_tmp(mbedtls_mpi_uint * xp,
mbedtls_mpi_uint * yp, const mbedtls_mpi *X,
                           const mbedtls_mpi *Y,
                           unsigned *ret ){
	mbedtls_mpi_lt_mpi_ct(X, Y, ret);
}

void mbedtls_mpi_lt_mpi_ct_wrapper_t(){
	const mbedtls_mpi XX = getA();
	const mbedtls_mpi *X = &XX;
	mbedtls_mpi_uint * xp = X->private_p;
	                    const mbedtls_mpi YY = getB();
                           const mbedtls_mpi *Y = &YY;
						   mbedtls_mpi_uint * yp = Y->private_p;
						   unsigned rret = getz();
                           unsigned *ret = &rret;

	vfct_tmp(xp,yp,X, Y, ret);
}
