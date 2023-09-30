#include "../../ct-verif.h"
#include "mbedtls/rsa.h"
void decrypt_wrapper(mbedtls_rsa_context* ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output,
				 mbedtls_mpi N,
				 mbedtls_mpi E,
				 mbedtls_mpi D,
				 mbedtls_mpi P,
				 mbedtls_mpi Q,
				 mbedtls_mpi DP,
				 mbedtls_mpi DQ,
				 mbedtls_mpi QP,
				 mbedtls_mpi RN,
				 mbedtls_mpi RP,
				 mbedtls_mpi RQ,
				 mbedtls_mpi Vi,
				 mbedtls_mpi Vf ){



	public_in(__SMACK_value(ctx));
	public_in(__SMACK_value(f_rng));
	public_in(__SMACK_value(p_rng));
	public_in(__SMACK_value(input));
	public_in(__SMACK_value(output));

	public_in(__SMACK_values(input, 64));
	public_in(__SMACK_values(output, 64));

	

	public_in(__SMACK_value(ctx->private_ver));
	public_in(__SMACK_value(ctx->private_hash_id));
	public_in(__SMACK_value(ctx->private_len));
	public_in(__SMACK_value(ctx->private_padding));

	public_in(__SMACK_value(N));
	public_in(__SMACK_value(N.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(N.private_p));
	ctx->private_N = N;
	
	public_in(__SMACK_value(E));
	public_in(__SMACK_value(E.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(E.private_p));
	ctx->private_E = E;

	public_in(__SMACK_value(D));
	public_in(__SMACK_value(D.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(D.private_p));
	ctx->private_D = D;

	public_in(__SMACK_value(P));
	public_in(__SMACK_value(P.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(P.private_p));
	ctx->private_P = P;

	public_in(__SMACK_value(Q));
	public_in(__SMACK_value(Q.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(Q.private_p));
	ctx->private_Q = Q;

	public_in(__SMACK_value(DP));
	public_in(__SMACK_value(DP.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(DP.private_p));
	ctx->private_DP = DP;

	public_in(__SMACK_value(DQ));
	public_in(__SMACK_value(DQ.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(DQ.private_p));
	ctx->private_DQ = DQ;

	public_in(__SMACK_value(QP));
	public_in(__SMACK_value(QP.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(QP.private_p));
	ctx->private_QP = QP;

	public_in(__SMACK_value(RN));
	public_in(__SMACK_value(RN.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(RN.private_p));
	ctx->private_RN = RN;

	public_in(__SMACK_value(RP));
	public_in(__SMACK_value(RP.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(RP.private_p));
	ctx->private_RP = RP;

	public_in(__SMACK_value(RQ));
	public_in(__SMACK_value(RQ.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(RQ.private_p));
	ctx->private_RQ = RQ;

	public_in(__SMACK_value(Vi));
	public_in(__SMACK_value(Vi.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(Vi.private_p));
	ctx->private_Vi = Vi;

	public_in(__SMACK_value(Vf));
	public_in(__SMACK_value(Vf.private_n));
	// s是正负号信息，不可泄露
	// public_in(__SMACK_value(D.private_s));
	public_in(__SMACK_value(Vf.private_p));
	ctx->private_Vf = Vf;


	


	mbedtls_rsa_private(ctx, f_rng, p_rng, input, output);
}

mbedtls_rsa_context getctx();
// int (*getf_rng)(void *, unsigned char *, size_t)();
void *get_frng();
void *getp_rng();
                 const unsigned char getinput();
                 unsigned char *getoutput();
void vfct_tmp(mbedtls_mpi_uint *d,mbedtls_mpi_uint *p,mbedtls_mpi_uint *q,mbedtls_mpi_uint *dp,mbedtls_mpi_uint *dq,mbedtls_mpi_uint *qp,
mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output ){
					mbedtls_rsa_private(ctx, f_rng, p_rng, input, output);

}


void decrypt_wrapper_t(){
mbedtls_rsa_context ctxo = getctx();
	mbedtls_rsa_context *ctx = &ctxo;
                    int (*f_rng)(void *, unsigned char *, size_t) = getf_rng();
                    void *p_rng = getp_rng();
					const unsigned char inputo = getinput();
					const unsigned char *input = &inputo;
					unsigned char outputo = getoutput();
					unsigned char *output = &outputo;
                    
mbedtls_mpi_uint *d = ctx->private_D.private_p;
mbedtls_mpi_uint *p = ctx->private_P.private_p;
mbedtls_mpi_uint *q = ctx->private_Q.private_p;
mbedtls_mpi_uint *dp = ctx->private_DP.private_p;
mbedtls_mpi_uint *dq = ctx->private_DQ.private_p;
mbedtls_mpi_uint *qp = ctx->private_QP.private_p;

	vfct_tmp(d,p,q,dp,dq,qp,ctx, f_rng, p_rng, input, output);
}
