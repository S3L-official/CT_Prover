#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "mbedtls/bignum.h"
#include "md_wrap.h"

extern int mbedtls_ct_hmac( mbedtls_md_context_t *ctx,
                     const unsigned char *add_data,
                     size_t add_data_len,
                     const unsigned char *data,
                     size_t data_len_secret,
                     size_t min_data_len,
                     size_t max_data_len,
                     unsigned char *output );

int mbedtls_ct_hmac_wrapper( mbedtls_md_context_t *ctx,
                     const unsigned char *add_data,
                     size_t add_data_len,
                     const unsigned char *data,
                     size_t data_len_secret,
                     size_t min_data_len,
                     size_t max_data_len,
                     unsigned char *output, struct mbedtls_md_info_t pvinfo){

    public_in(__SMACK_value(ctx));
    public_in(__SMACK_value(add_data));
    public_in(__SMACK_value(add_data_len));
    public_in(__SMACK_value(data));
    public_in(__SMACK_value(data_len_secret));
    public_in(__SMACK_value(min_data_len));
    public_in(__SMACK_value(max_data_len));
    public_in(__SMACK_value(output));

    public_in(__SMACK_value(ctx->private_md_info));
    public_in(__SMACK_value(ctx->private_md_ctx));
    public_in(__SMACK_value(ctx->private_hmac_ctx));

        public_in(__SMACK_value(pvinfo.name));
        // public_in(__SMACK_value(pvinfo.type));
        public_in(__SMACK_value(pvinfo.size));
        public_in(__SMACK_value(pvinfo.block_size));
        public_in(__SMACK_value(pvinfo));
        

    public_in(__SMACK_values(add_data, 64));
    public_in(__SMACK_values(data, 64));
    public_in(__SMACK_values(output, 64));

		
	mbedtls_ct_hmac(ctx,add_data, add_data_len, data, data_len_secret, min_data_len,
    max_data_len, output);
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

	mbedtls_md_context_t *getctx();
                     const unsigned char *getadd_data();
                     size_t getadd_data_len();
                     const unsigned char *getdata();
                     size_t getdata_len_secret();
                     size_t getmin_data_len();
                     size_t getmax_data_len();
                     unsigned char *getoutput();
void mbedtls_ct_hmac_wrapper_t(){
	mbedtls_md_context_t *ctx = getctx();
                     const unsigned char *add_data = getadd_data();
                     size_t add_data_len = getadd_data_len();
                     const unsigned char *data = getdata();
                     size_t data_len_secret = getdata_len_secret();
                     size_t min_data_len = getmin_data_len();
                     size_t max_data_len = getmax_data_len();
                     unsigned char *output = getoutput();
	
		mbedtls_ct_hmac(ctx,add_data, add_data_len, data, data_len_secret, min_data_len,
    max_data_len, output);
}
