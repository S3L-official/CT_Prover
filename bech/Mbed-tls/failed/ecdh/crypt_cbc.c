#include "../../ct-verif.h"
#include "mbedtls/aes.h"
void computer_share_wrapper(mbedtls_ecp_group *grp, mbedtls_mpi *z,
                         const mbedtls_ecp_point *Q, const mbedtls_mpi *d,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng ){

	

	public_in(__SMACK_value(grp));
	public_in(__SMACK_value(z));
	public_in(__SMACK_value(Q));
	public_in(__SMACK_value(d));
	public_in(__SMACK_value(f_rng));
	public_in(__SMACK_value(p_rng));

	public_in(__SMACK_values(iv, 64));
	public_in(__SMACK_values(input, 64));
	public_in(__SMACK_values(output, 64));

	public_in(__SMACK_value(ctx->private_nr));
	public_in(__SMACK_value(ctx->private_rk_offset));
	public_in(__SMACK_value(ctx->private_buf));


	int mbedtls_ecdh_compute_shared(grp, z, Q, d, f_rng, p_rng);
	
}

mbedtls_aes_context * getctx();
int getmod();
int getlen();
const unsigned char * getpt();
unsigned char * getpt2();

void crypt_cbc_wrapper_t(){

	mbedtls_aes_context *ctx = getctx();
                    int mode = getmod();
                    size_t length = getlen();
                    unsigned char iv[16] = {'a'};
                    const unsigned char *input = getpt();
                    unsigned char *output = getpt2();


	mbedtls_aes_crypt_cbc(ctx, mode, length, iv, input, output);
}
