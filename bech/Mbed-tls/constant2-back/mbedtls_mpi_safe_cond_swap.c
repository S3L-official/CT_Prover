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

mbedtls_mpi *getx();
mbedtls_mpi *gety();
unsigned char getassign();

void mbedtls_mpi_safe_cond_swap_wrapper_t(){

	mbedtls_mpi *X = getx();
    const mbedtls_mpi *Y = gety();
    unsigned char assign = getassign();

	mbedtls_mpi_safe_cond_swap(X, Y, assign );
}
