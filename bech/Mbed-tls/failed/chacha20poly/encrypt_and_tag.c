#include "../../ct-verif.h"
#include "mbedtls/chachapoly.h"
void encrypt_and_tag_wrapper(mbedtls_chachapoly_context *ctx,
                                        size_t length,
                                        unsigned char *tag,
                                        const unsigned char *aad,
                                        size_t aad_len,
                                        const unsigned char *input,
                                        unsigned char *output,
										const unsigned char* nonce){

	public_in(__SMACK_value(ctx));
	public_in(__SMACK_value(length));
	public_in(__SMACK_value(aad));
	public_in(__SMACK_value(aad_len));
	public_in(__SMACK_value(output));
	public_in(__SMACK_value(input));
	public_in(__SMACK_value(tag));
	public_in(__SMACK_value(nonce));


	public_in(__SMACK_values(input, 64));
	public_in(__SMACK_values(output, 64));
	public_in(__SMACK_values(nonce, 12));
	public_in(__SMACK_values(tag, 16));

	public_in(__SMACK_value(ctx->private_aad_len));
	public_in(__SMACK_value(ctx->private_ciphertext_len));
	public_in(__SMACK_value(ctx->private_state));
	public_in(__SMACK_value(ctx->private_mode));

	// public_in(__SMACK_value(ctx->private_chacha20_ctx));
	// public_in(__SMACK_value(ctx->private_poly1305_ctx));

	public_in(__SMACK_value(ctx->private_chacha20_ctx.private_keystream8));
	public_in(__SMACK_value(ctx->private_chacha20_ctx.private_keystream_bytes_used));
	// public_in(__SMACK_value(ctx->private_chacha20_ctx.private_state));
	
	// public_in(__SMACK_value(ctx->private_poly1305_ctx.private_acc));
	// public_in(__SMACK_value(ctx->private_poly1305_ctx.private_queue));
	// public_in(__SMACK_value(ctx->private_poly1305_ctx.private_queue_len));
	// public_in(__SMACK_value(ctx->private_poly1305_ctx.private_r));
	// public_in(__SMACK_value(ctx->private_poly1305_ctx.private_s));

	// public_in(__SMACK_values(ctx->private_poly1305_ctx.private_acc,5));


	// public_in(__SMACK_value(ctx->private_sk));
	// unsigned char tag[16]  = {'a'};
	// const unsigned char nonce[12] = {'s'};
	


	mbedtls_chachapoly_encrypt_and_tag(ctx, length, nonce, aad, aad_len, input, output, tag);
	
}

mbedtls_chachapoly_context * getctx();
int getmod();
int getlen();
const unsigned char * getpt();
unsigned char * getpt2();
const unsigned char * getpt3();
unsigned char * gettag();

void encrypt_and_tag_wrapper_t(){

	mbedtls_chachapoly_context *ctx = getctx();
                    size_t length = getlen();
					const unsigned char nonce[12] = {'s'};
                    const unsigned char *input = getpt();
                    unsigned char *output = getpt2();
					const unsigned char *aad = getpt3();
					size_t aad_len = getlen();
					unsigned char *tag = gettag();


	mbedtls_chachapoly_encrypt_and_tag(ctx, length, nonce, aad, aad_len, input, output, tag);
}
