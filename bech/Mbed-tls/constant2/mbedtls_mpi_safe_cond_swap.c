#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "mbedtls/bignum.h"
void mbedtls_mpi_safe_cond_swap_wrapper(mbedtls_mpi *X,
                                  const mbedtls_mpi *Y,
                                  unsigned char assign ){

	

	public_in(__SMACK_value(X));
	public_in(__SMACK_value(Y));

	
	public_in(__SMACK_value(X->private_n));
	public_in(__SMACK_value(X->private_p));
	public_in(__SMACK_value(X->private_s));

	public_in(__SMACK_value(Y->private_n));
	public_in(__SMACK_value(Y->private_p));
	public_in(__SMACK_value(Y->private_s));


	mbedtls_mpi_safe_cond_swap(X, Y, assign );
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

mbedtls_mpi getx();
mbedtls_mpi gety();
unsigned char getassign();

void vfct_tmp( mbedtls_mpi_uint * xp,mbedtls_mpi_uint * yp,
mbedtls_mpi *X,
                                  const mbedtls_mpi *Y,
                                  unsigned char assign){
			mbedtls_mpi_safe_cond_swap(X, Y, assign);

}

void mbedtls_mpi_safe_cond_swap_wrapper_t(){


		const mbedtls_mpi XX = getx();
	const mbedtls_mpi *X = &XX;
	mbedtls_mpi_uint * xp = X->private_p;
	                    const mbedtls_mpi YY = gety();
                           const mbedtls_mpi *Y = &YY;
						   mbedtls_mpi_uint * yp = Y->private_p;
						   unsigned char assign = getassign();

	vfct_tmp(xp,yp,X, Y, assign);
}