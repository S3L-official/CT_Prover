#include "../../ct-verif.h"
#include "inner.h"
void cbc_decrypt_wrapper(const br_des_tab_cbcdec_keys *ctx,
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

	br_des_tab_cbcdec_run(ctx, iv, data, len);
}


 br_des_tab_cbcdec_keys getctx();
void *getpt2();
void *getpt3();
unsigned getuns();
uint32_t* getskey();
void tt(uint32_t* skey2);

 br_block_cbcdec_class getvtable();


void vfct_tmp(uint32_t* sk,
	br_des_tab_cbcdec_keys *ctx, void *iv, void *data, size_t len){	
	br_des_tab_cbcdec_run(ctx, iv, data, len);
}

void cbc_decrypt_wrapper_t(){
	br_des_tab_cbcdec_keys key = getctx();
	br_des_tab_cbcdec_keys *ctx = &key;
	// br_block_cbcdec_class vtb = getvtable();
	// // br_block_cbcdec_class* vtable = &vtb;
	uint32_t* sk = ctx->skey;
	// br_block_cbcdec_class *vtable = ctx->vtable;
	void *data = getpt2();
	void *iv = getpt3();
	size_t len = 90;

	vfct_tmp(sk, ctx, iv, data, len);
}
