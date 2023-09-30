#include "../../ct-verif.h"
#include "../BearSSL/src/inner.h"
void encrypt_wrapper(unsigned num_rounds, const uint32_t *skey, void *data){
	public_in(__SMACK_value(num_rounds));
	public_in(__SMACK_value(skey));
	public_in(__SMACK_value(data));

	public_in(__SMACK_values(data, 16));

	br_aes_small_encrypt(num_rounds, skey, data);
}


const uint32_t* getpt();
void *getpt2();
unsigned getuns();

void encrypt_wrapper_t(){
	unsigned num_rounds = getuns();
	const uint32_t *skey = getpt();
	void *data = getpt2();

	br_aes_small_encrypt(num_rounds, skey, data);
}

// void decrypt_wrapper(unsigned num_rounds, const uint32_t *skey, void *data){
// 	public_in(__SMACK_value(num_rounds));
// 	public_in(__SMACK_value(skey));
// 	public_in(__SMACK_value(data));

// 	public_in(__SMACK_values(data, 16));

// 	br_aes_small_decrypt(num_rounds, skey, data);
// }


// void decrypt_wrapper_t(){
// 	unsigned num_rounds = getuns();
// 	const uint32_t *skey = getpt();
// 	void *data = getpt2();

// 	br_aes_small_decrypt(num_rounds, skey, data);
// }

// void cbc_ctr_wrapper(const br_aes_small_ctrcbc_keys *ctx,
// 	void *ctr, void *data, size_t len){

// 	public_in(__SMACK_value(ctx));
// 	public_in(__SMACK_value(ctx->num_rounds));
// 	public_in(__SMACK_value(ctx->vtable));
// 	public_in(__SMACK_value(ctx->skey));
// 	//只有skey的内容是secret

// 	public_in(__SMACK_value(ctx->vtable->decrypt));
// 	public_in(__SMACK_value(ctx->vtable->block_size));
// 	public_in(__SMACK_value(ctx->vtable->context_size));
// 	public_in(__SMACK_value(ctx->vtable->ctr));
// 	public_in(__SMACK_value(ctx->vtable->encrypt));
// 	public_in(__SMACK_value(ctx->vtable->init));
// 	public_in(__SMACK_value(ctx->vtable->log_block_size));
// 	public_in(__SMACK_value(ctx->vtable->mac));

// 	public_in(__SMACK_value(ctr));
// 	public_in(__SMACK_value(data));
// 	public_in(__SMACK_value(len));

// 	public_in(__SMACK_values(ctr, 1));
// 	public_in(__SMACK_values(data, 16));

// 	br_aes_small_ctrcbc_ctr(ctx, ctr, data, len);

// }


// void cbc_mac_wrapper(const br_aes_small_ctrcbc_keys *ctx,
// 	void *cbcmac, void *data, size_t len){

// 	public_in(__SMACK_value(ctx));
// 	public_in(__SMACK_value(ctx->num_rounds));
// 	public_in(__SMACK_value(ctx->vtable));
// 	public_in(__SMACK_value(ctx->skey));
// 	//只有skey的内容是secret

// 	public_in(__SMACK_value(ctx->vtable->decrypt));
// 	public_in(__SMACK_value(ctx->vtable->block_size));
// 	public_in(__SMACK_value(ctx->vtable->context_size));
// 	public_in(__SMACK_value(ctx->vtable->ctr));
// 	public_in(__SMACK_value(ctx->vtable->encrypt));
// 	public_in(__SMACK_value(ctx->vtable->init));
// 	public_in(__SMACK_value(ctx->vtable->log_block_size));
// 	public_in(__SMACK_value(ctx->vtable->mac));

// 	public_in(__SMACK_value(cbcmac));
// 	public_in(__SMACK_value(data));
// 	public_in(__SMACK_value(len));

// 	public_in(__SMACK_values(cbcmac, 1));
// 	public_in(__SMACK_values(data, 16));

// 	br_aes_small_ctrcbc_mac(ctx, cbcmac, data, len);

// }

// //这个函数包含上面两个函数

// void ctr_cbc_encrypt_wrapper(const br_aes_small_ctrcbc_keys *ctx,
// 	void *ctr, void *cbcmac, void *data, size_t len){

// 	public_in(__SMACK_value(ctx));
// 	public_in(__SMACK_value(ctx->num_rounds));
// 	public_in(__SMACK_value(ctx->vtable));
// 	public_in(__SMACK_value(ctx->skey));
// 	//只有skey的内容是secret

// 	public_in(__SMACK_value(ctx->vtable->decrypt));
// 	public_in(__SMACK_value(ctx->vtable->block_size));
// 	public_in(__SMACK_value(ctx->vtable->context_size));
// 	public_in(__SMACK_value(ctx->vtable->ctr));
// 	public_in(__SMACK_value(ctx->vtable->encrypt));
// 	public_in(__SMACK_value(ctx->vtable->init));
// 	public_in(__SMACK_value(ctx->vtable->log_block_size));
// 	public_in(__SMACK_value(ctx->vtable->mac));

// 	public_in(__SMACK_value(cbcmac));
// 	public_in(__SMACK_value(ctr));
// 	public_in(__SMACK_value(data));
// 	public_in(__SMACK_value(len));

// 	public_in(__SMACK_values(cbcmac, 1));
// 	public_in(__SMACK_values(ctr, 1));
// 	public_in(__SMACK_values(data, 16));

// 	br_aes_small_ctrcbc_encrypt(ctx, ctr, cbcmac, data, len);

// }

// void cbc_small_encrypt_wrapper(const br_aes_small_cbcdec_keys *ctx,
// 	void *iv, void *data, size_t len){

// 	public_in(__SMACK_value(ctx));
// 	public_in(__SMACK_value(ctx->num_rounds));
// 	public_in(__SMACK_value(ctx->vtable));
// 	public_in(__SMACK_value(ctx->skey));
// 	//只有skey的内容是secret

// 	public_in(__SMACK_value(ctx->vtable->run));
// 	public_in(__SMACK_value(ctx->vtable->block_size));
// 	public_in(__SMACK_value(ctx->vtable->context_size));
// 	public_in(__SMACK_value(ctx->vtable->init));
// 	public_in(__SMACK_value(ctx->vtable->log_block_size));


// 	public_in(__SMACK_value(iv));
// 	public_in(__SMACK_value(data));
// 	public_in(__SMACK_value(len));

// 	public_in(__SMACK_values(iv, 1));
// 	public_in(__SMACK_values(data, 16));

// 	br_aes_small_cbcenc_run(ctx, iv, data, len);

// }



// void cbc_small_decrypt_wrapper(const br_aes_small_cbcdec_keys *ctx,
// 	void *iv, void *data, size_t len){

// 	public_in(__SMACK_value(ctx));
// 	public_in(__SMACK_value(ctx->num_rounds));
// 	public_in(__SMACK_value(ctx->vtable));
// 	public_in(__SMACK_value(ctx->skey));
// 	//只有skey的内容是secret

// 	public_in(__SMACK_value(ctx->vtable->run));
// 	public_in(__SMACK_value(ctx->vtable->block_size));
// 	public_in(__SMACK_value(ctx->vtable->context_size));
// 	public_in(__SMACK_value(ctx->vtable->init));
// 	public_in(__SMACK_value(ctx->vtable->log_block_size));


// 	public_in(__SMACK_value(iv));
// 	public_in(__SMACK_value(data));
// 	public_in(__SMACK_value(len));

// 	public_in(__SMACK_values(iv, 1));
// 	public_in(__SMACK_values(data, 16));

// 	br_aes_small_cbcdec_run(ctx, iv, data, len);

// }

// uint32_t get32();
// void* getvoid1();
// void* getvoid2();
// const br_aes_small_cbcdec_keys * getk();

// const br_aes_small_ctrcbc_keys *getpt3();

// void cbc_ctr_wrapper_t(){
// 	const br_aes_small_ctrcbc_keys *ctx = getpt3();
// 	void *ctr = getvoid2();
// 	void *data = getvoid1(); 
// 	size_t len = get32();
// 	br_aes_small_ctrcbc_ctr(ctx, ctr, data, len);
// }


// void cbc_mac_wrapper_t(){
// 	const br_aes_small_ctrcbc_keys *ctx = getpt3();
// 	void *ctr = getvoid2();
// 	void *data = getvoid1(); 
// 	size_t len = get32();
// 	br_aes_small_ctrcbc_mac(ctx, ctr, data, len);
// }


// void ctr_cbc_encrypt_wrapper_t(){
// 	const br_aes_small_ctrcbc_keys *ctx = getpt3();
// 	void *ctr = getvoid2();
// 	void *data = getvoid1(); 
// 	size_t len = get32();
// 	void *cbcmac = getvoid1();
// 	br_aes_small_ctrcbc_encrypt(ctx, ctr, cbcmac, data, len);
// }

// void cbc_small_encrypt_wrapper_t(){
// 	const br_aes_small_cbcdec_keys *ctx = getk();
// 	void *iv = getvoid1();
// 	 void *data = getvoid2();
// 	  size_t len = get32();

// 	br_aes_small_cbcenc_run(ctx, iv, data, len);
// }

// void cbc_small_decrypt_wrapper_t(){
// 	const br_aes_small_cbcdec_keys *ctx = getk();
// 	void *iv = getvoid1();
// 	 void *data = getvoid2();
// 	  size_t len = get32();

// 	br_aes_small_cbcdec_run(ctx, iv, data, len);
// }