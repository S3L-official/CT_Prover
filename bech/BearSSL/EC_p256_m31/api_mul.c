#include "../../ct-verif.h"
#include "inner.h"
#include "bearssl_ec.h"
extern uint32_t api_mul(unsigned char *G, size_t Glen,
	const unsigned char *kb, size_t kblen, int curve);

void api_mul_wrapper(unsigned char *G, size_t Glen,
	const unsigned char *kb, size_t kblen, int curve){
	public_in(__SMACK_value(G));
	public_in(__SMACK_value(Glen));
	public_in(__SMACK_value(kb));
	public_in(__SMACK_value(kblen));
	public_in(__SMACK_value(curve));

	public_in(__SMACK_values(G, 64));
	const br_ec_impl *iec = &br_ec_p256_m31;

	iec->mul(G, Glen, kb, kblen, BR_EC_secp256r1);
}


const int32_t getint32();
size_t getsize_t();
size_t getsize_t2();
void * getvoid5();
unsigned char * getunsigned();
const unsigned char * getusn();


void api_mul_wrapper_t(){

	unsigned char *G = getunsigned();
	 size_t Glen = getsize_t();
	const unsigned char *kb = getusn();
	 size_t kblen = getsize_t2();
	int curve = 29;

	const br_ec_impl *iec = &br_ec_p256_m31;

	iec->mul(G, Glen, kb, kblen, BR_EC_secp256r1);
}
