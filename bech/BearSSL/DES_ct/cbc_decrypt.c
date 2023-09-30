#include "../../ct-verif.h"
#include "inner.h"
void cbc_decrypt_wrapper(const br_des_ct_cbcdec_keys *ctx,
	void *iv, void *data, size_t len){
	public_in(__SMACK_value(ctx));
	public_in(__SMACK_value(iv));
	public_in(__SMACK_value(data));
	public_in(__SMACK_value(len));

	public_in(__SMACK_value(ctx->num_rounds));
	// public_in(__SMACK_value(ctx->vtable->block_size));
	// public_in(__SMACK_value(ctx->vtable->context_size));
	// public_in(__SMACK_value(ctx->vtable->log_block_size));

	public_in(__SMACK_values(data, 16));
	public_in(__SMACK_values(iv, 16));

	br_des_ct_cbcdec_run(ctx, iv, data, len);
}


const br_des_ct_cbcdec_keys *getctx();
void *getpt2();
void *getpt3();
unsigned getuns();

void vfct_tmp(uint32_t* skey, const br_des_ct_cbcdec_keys *ctx, void *iv, void *data, size_t len){
	br_des_ct_cbcdec_run(ctx, iv, data, len);
}

void cbc_decrypt_wrapper_t(){
	const br_des_ct_cbcdec_keys *ctx = getctx();
	void *iv = getpt2();
	void *data = getpt3();
	size_t len = 32;
	uint32_t* skey = ctx->skey;
	vfct_tmp(skey, ctx, iv, data, len);
}
