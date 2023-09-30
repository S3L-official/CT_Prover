#include "../../ct-verif.h"
#include "inner.h"
void cbc_enc_wrapper(const br_aes_x86ni_cbcenc_keys *ctx,
	void *iv, void *data, size_t len){
	public_in(__SMACK_value(ctx));
	public_in(__SMACK_value(iv));
	public_in(__SMACK_value(data));
	public_in(__SMACK_value(len));

	// public_in(__SMACK_value(ctx->num_rounds));
	// public_in(__SMACK_value(ctx->skey));
	// public_in(__SMACK_value(ctx->vtable));

	public_in(__SMACK_values(data, 32));
	public_in(__SMACK_values(iv, 32));

	br_aes_x86ni_cbcenc_run(ctx, iv, data, len);
}


const br_aes_x86ni_cbcenc_keys * getctx();
void *getiv();
 void *getdata();
  size_t getlen();
void cbc_enc_wrapper_t(){
	const br_aes_x86ni_cbcenc_keys *ctx = getctx();
	void *iv = getiv();
	 void *data = getdata();
	  size_t len = getlen();
	br_aes_x86ni_cbcenc_run(ctx, iv, data, len);
}

// extern const br_block_cbcenc_class br_aes_x86ni_cbcenc_vtable;
// extern const br_block_cbcdec_class br_aes_x86ni_cbcdec_vtable;
// extern const br_block_ctr_class br_aes_x86ni_ctr_vtable;

// void
// cbc_enc_dec_wrapper(		unsigned char key[32],
// 		unsigned char plain[16],
// 		unsigned char cipher[16],
// 		unsigned char buf[16],
// 		unsigned char iv[16])
// {
// 	// public_in(__SMACK_value(key));
// 	// public_in(__SMACK_value(plain));
// 	// public_in(__SMACK_value(cipher));
// 	// public_in(__SMACK_value(buf));
// 	// public_in(__SMACK_value(iv));

// 	// public_in(__SMACK_values(plain, 16));
// 	// public_in(__SMACK_values(cipher, 16));
// 	// public_in(__SMACK_values(buf, 16));
// 	// public_in(__SMACK_values(iv, 16));

	
// 	const br_block_cbcenc_class *x_cbcenc;
// 	const br_block_cbcdec_class *x_cbcdec;
// 	const br_block_ctr_class *x_ctr;
// 	int hcbcenc, hcbcdec, hctr;

// 	x_cbcenc = &br_aes_x86ni_cbcenc_vtable;
// 	x_cbcdec = &br_aes_x86ni_cbcdec_vtable;
// 	x_ctr = &br_aes_x86ni_ctr_vtable;

// 	const br_block_cbcenc_class *ve = x_cbcenc;
// 	const br_block_cbcdec_class *vd = x_cbcdec;
// 	const br_block_ctr_class *vc = x_ctr;
// 		size_t u;


// 		size_t key_len;
// 		br_aes_gen_cbcenc_keys v_ec;
// 		br_aes_gen_cbcdec_keys v_dc;
// 		const br_block_cbcenc_class **ec;
// 		const br_block_cbcdec_class **dc;

// 		ec = &v_ec.vtable;
// 		dc = &v_dc.vtable;
// 		key_len = 32;
		
// 		ve->init(ec, key, key_len);
		
// 		ve->run(ec, iv, buf, sizeof buf);
		
// 		vd->init(dc, key, key_len);
		
// 		vd->run(dc, iv, buf, sizeof buf);
// }

// void
// tmp(	unsigned char key[32],
// 		unsigned char plain[16],
// 		unsigned char cipher[16],
// 		unsigned char buf[16],
// 		unsigned char iv[16])
// {
// 	const br_block_cbcenc_class *x_cbcenc;
// 	const br_block_cbcdec_class *x_cbcdec;
// 	const br_block_ctr_class *x_ctr;
// 	int hcbcenc, hcbcdec, hctr;

// 	x_cbcenc = br_aes_x86ni_cbcenc_get_vtable();
// 	x_cbcdec = br_aes_x86ni_cbcdec_get_vtable();
// 	x_ctr = br_aes_x86ni_ctr_get_vtable();

// 	const br_block_cbcenc_class *ve = x_cbcenc;
// 	const br_block_cbcdec_class *vd = x_cbcdec;
// 	const br_block_ctr_class *vc = x_ctr;
// 		size_t u;


// 		size_t key_len;
// 		br_aes_gen_cbcenc_keys v_ec;
// 		br_aes_gen_cbcdec_keys v_dc;
// 		const br_block_cbcenc_class **ec;
// 		const br_block_cbcdec_class **dc;

// 		ec = &v_ec.vtable;
// 		dc = &v_dc.vtable;
// 		key_len = 32;
		
// 		ve->init(ec, key, key_len);
		
// 		ve->run(ec, iv, buf, 16);
		
// 		vd->init(dc, key, key_len);
		
// 		vd->run(dc, iv, buf, 16);
// }

// void cbc_enc_dec_wrapper_t(){

// 	unsigned char key[32] = {'a'};
// 		unsigned char plain[16] = {'a'};
// 		unsigned char cipher[16] = {'a'};
// 		unsigned char buf[16] = {'a'};
// 		unsigned char iv[16] = {'a'};

// 	tmp(key,plain,cipher,buf,iv);

// }
