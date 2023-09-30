#include "../../ct-verif.h"
#include "mbedtls/ecdsa.h"
void sign_wrapper(mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
				mbedtls_mpi P, mbedtls_mpi A, mbedtls_mpi B, mbedtls_ecp_point G,
				mbedtls_mpi N){

	

	public_in(__SMACK_value(grp));
	public_in(__SMACK_value(r));
	public_in(__SMACK_value(s));
	public_in(__SMACK_value(d));
	public_in(__SMACK_value(buf));
	public_in(__SMACK_value(blen));
	public_in(__SMACK_value(f_rng));
	public_in(__SMACK_value(p_rng));

	public_in(__SMACK_value(grp->id));
	public_in(__SMACK_value(grp->pbits));
	public_in(__SMACK_value(grp->nbits));
	public_in(__SMACK_value(grp->private_h));

	public_in(__SMACK_value(grp->private_modp));
	// public_in(__SMACK_value(grp->private_T));
	// public_in(__SMACK_value(grp->private_T->private_X));
	// public_in(__SMACK_value(grp->private_T->private_Y));
	// public_in(__SMACK_value(grp->private_T->private_Z));

	public_in(__SMACK_value(grp->private_T_size));

	public_in(__SMACK_value(P));
	public_in(__SMACK_value(P.private_n));
	public_in(__SMACK_value(P.private_s));
	public_in(__SMACK_value(P.private_p));
	public_in(__SMACK_values(P.private_p, 32));
	



	mbedtls_ecdsa_sign(grp, r, s, d, buf, blen, f_rng, p_rng );
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

// mbedtls_aes_context * getctx();
// int getmod();
// int getlen();
// const unsigned char * getpt();
// unsigned char * getpt2();

// void crypt_cbc_wrapper_t(){

// 	mbedtls_aes_context *ctx = getctx();
//                     int mode = getmod();
//                     size_t length = getlen();
//                     unsigned char iv[16] = {'a'};
//                     const unsigned char *input = getpt();
//                     unsigned char *output = getpt2();


// 	mbedtls_aes_crypt_cbc(ctx, mode, length, iv, input, output);
// }
