#include "../../ct-verif.h"

#include "sodium.h"

int crypto_aead_chacha20poly1305_decrypt_wrapper(unsigned char *m,
                                         unsigned long long *mlen_p,
                                         unsigned char *nsec,
                                         const unsigned char *c,
                                         const unsigned char *ad,
                                         const unsigned char *npub,
                                         const unsigned char *k)
{
  /* Addresses of arguments are public for now */
  public_in(__SMACK_value(m));
  public_in(__SMACK_value(mlen_p));
  public_in(__SMACK_value(nsec));
  public_in(__SMACK_value(c));
  public_in(__SMACK_value(ad));
  public_in(__SMACK_value(npub));
  public_in(__SMACK_value(k));

  /* More useful annotations */
  public_in(__SMACK_values(c,32));
  public_in(__SMACK_values(ad,32));
  public_in(__SMACK_values(npub,crypto_aead_chacha20poly1305_NPUBBYTES));

  //  declassified_out_object(__SMACK_object(m,*mlen_p));
  //  declassified_out_value(__SMACK_return_value());

    public_in(__SMACK_values(mlen_p,1));

  return  crypto_aead_chacha20poly1305_decrypt(m,mlen_p,
                                               nsec,
                                               c,32,
                                               ad,32,
                                               npub,k);
}

unsigned char gout();
unsigned char gsec();
  unsigned char gin();
const unsigned char gk();
 const unsigned char gc();
  const unsigned char gkk();
unsigned long long* gclen();


void vfct_tmp(unsigned char *m,
                                     unsigned long long *mlen_p,
                                     unsigned char *nsec,
                                     const unsigned char *c,
                                     
                                     const unsigned char *ad,
                                     
                                     const unsigned char *npub,
                                     const unsigned char *k){
  crypto_aead_chacha20poly1305_decrypt(m,mlen_p,
                                               nsec,
                                               c,32,
                                               ad,32,
                                               npub,k);
}


void crypto_aead_chacha20poly1305_decrypt_wrapper_t()
{
  unsigned char dout = gout();
    unsigned char din = gin();
const unsigned char dk = gk();
 const unsigned char dc = gc();
 unsigned char dsec = gsec();
  const unsigned char dkk = gkk();

 unsigned char *nsec = &dsec;
 unsigned char *c =&dout;
  unsigned char *m =&din;
const unsigned char *ad=&dk;
const unsigned char *npub=&dc;
unsigned long long clen = gclen();
unsigned long long *mlen_p = &clen;
const unsigned char *k = &dkk;
  vfct_tmp(m,mlen_p,
                                               nsec,
                                               c,
                                               ad,
                                               npub,k);
}