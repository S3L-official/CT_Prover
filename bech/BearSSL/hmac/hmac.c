#include "../../ct-verif.h"
#include "inner.h"
void hmac_wrapper(const br_hmac_context *ctx,
	const void *data, size_t len, size_t min_len, size_t max_len,
	void *out){
	public_in(__SMACK_value(ctx));
	public_in(__SMACK_value(data));
	public_in(__SMACK_value(len));
	public_in(__SMACK_value(min_len));
	public_in(__SMACK_value(max_len));
	public_in(__SMACK_value(out));

	public_in(__SMACK_value(ctx->dig));
	public_in(__SMACK_value(ctx->out_len));
	public_in(__SMACK_value(ctx->kso));
	// public_in(__SMACK_value(ctx->dig.md5));
	// public_in(__SMACK_value(ctx->dig.md5sha1));
	// public_in(__SMACK_value(ctx->dig.sha1));
	// public_in(__SMACK_value(ctx->dig.sha224));
	// public_in(__SMACK_value(ctx->dig.sha256));
	// public_in(__SMACK_value(ctx->dig.sha384));
	// public_in(__SMACK_value(ctx->dig.sha512));
	// public_in(__SMACK_value(ctx->dig.vtable));


	public_in(__SMACK_values(out, 64));

	br_hmac_outCT(ctx,
	data, len,  min_len,  max_len, out);
}


void vfct_tmp(unsigned char* k, const br_hmac_context *ctx,
	const void *data, size_t len, size_t min_len, size_t max_len,
	void *out){
	br_hmac_outCT(ctx,
	data, len,  min_len,  max_len, out);
}


br_hmac_context getctx();
void *getvoud();
size_t getlen();
void *getvoud2();
void hmac_wrapper_t(){
	br_hmac_context cctx = getctx();
	const br_hmac_context *ctx = &cctx;
	const void *data = getvoud();
	size_t len = getlen();
	size_t min_len = getlen();
	size_t max_len = getlen();
	void *out = getvoud2();
	unsigned char* k = ctx->kso;
	vfct_tmp(k, ctx,
	data, len,  min_len,  max_len, out);
}
