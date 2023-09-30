#include "../../ct-verif.h"
#include "mbedtls/constant_time.h"
#include "mbedtls/bignum.h"

int mbedtls_ct_memcpy_offset_wrapper( unsigned char *dest,
                               const unsigned char *src,
                               size_t offset,
                               size_t offset_min,
                               size_t offset_max,
                               size_t len ){

	public_in(__SMACK_value(dest));
		public_in(__SMACK_value(src));
		public_in(__SMACK_value(offset_min));
		public_in(__SMACK_value(offset_max));
		public_in(__SMACK_value(len));

		
	mbedtls_ct_memcpy_offset( dest, src, offset,offset_min, offset_max, len);
	// mbedtls_internal_aes_encrypt(ctx, input, output);
}

	unsigned char *getdest();
                               const unsigned char *getsrc();
                               size_t getoffset();
                               size_t getoffset_min();
                               size_t getoffset_max();
                               size_t getlen();


void mbedtls_ct_memcpy_offset_wrapper_t(){
	unsigned char *dest = getdest();
                               const unsigned char *src = getsrc();
                               size_t offset = getoffset();
                               size_t offset_min = getoffset_min();
                               size_t offset_max = getoffset_max();
                               size_t len = getlen();
	
	mbedtls_ct_memcpy_offset( dest, src, offset,offset_min, offset_max, len);
}
