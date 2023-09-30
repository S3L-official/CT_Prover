#include "../../ct-verif.h"
#include "inner.h"
void decrypt_wrapper(unsigned char *x, const br_rsa_private_key *sk){
	public_in(__SMACK_value(x));
	public_in(__SMACK_value(sk));
	public_in(__SMACK_value(sk->p));
	public_in(__SMACK_value(sk->q));
	public_in(__SMACK_value(sk->dp));
	public_in(__SMACK_value(sk->dq));
	public_in(__SMACK_value(sk->iq));

	public_in(__SMACK_value(sk->plen));
	public_in(__SMACK_value(sk->qlen));
	public_in(__SMACK_value(sk->dplen));
	public_in(__SMACK_value(sk->dqlen));
	public_in(__SMACK_value(sk->iqlen));

	public_in(__SMACK_value(sk->n_bitlen));
	
	
	br_rsa_i32_private(x, sk);
}


unsigned char getcharpt();
const br_rsa_private_key getpk();

void vfct_taintseed(unsigned char *, unsigned char *, unsigned char *, unsigned char *, unsigned char *);

// void vfct_tmp(unsigned char *p, unsigned char *q, unsigned char *dp, unsigned char *dq, unsigned char *iq, unsigned char *x, const br_rsa_private_key *sk){
// 	br_rsa_i15_private(x, sk);
// }

void decrypt_wrapper_t(){
unsigned char xx = getcharpt();
unsigned char *x = &xx;
br_rsa_private_key key = getpk();
br_rsa_private_key* sk = &key;
unsigned char *p = sk->p;
unsigned char *q = sk->q;
unsigned char *dp = sk->dp;
unsigned char *dq = sk->dq;
unsigned char *iq = sk->iq;

vfct_taintseed(p,q,dp,dq,iq);

sk->p = p;
sk->q = q;
sk->dp = dp;
sk->dq = dq;
sk->iq = iq;
br_rsa_i32_private(x, sk);
// vfct_tmp(p,q,dp,dq,iq, x, sk);
}
