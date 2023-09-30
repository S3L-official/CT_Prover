#include "../../ct-verif.h"

#include "sodium.h"

extern int crypto_onetimeauth_poly1305_donna(unsigned char *out, const unsigned char *m,
                                         unsigned long long inlen,
					 const unsigned char *key);

int
crypto_onetimeauth_poly1305_donna_wrapper(unsigned char *out, const unsigned char *m,
                                          unsigned long long inlen,
                                          const unsigned char *key)
{
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(m));
  public_in(__SMACK_value(key));

  public_in(__SMACK_value(inlen));

  return crypto_onetimeauth_poly1305_donna(out,m,inlen,key);
}

unsigned char gout();
 const unsigned char gin();
const unsigned char gk();
 const unsigned char gc();
unsigned long long gclen();
void crypto_onetimeauth_poly1305_donna_wrapper_t()
{
  unsigned char dout = gout();
   const unsigned char din = gin();
const unsigned char dk = gk();
 const unsigned char dc = gc();
 unsigned char *out =&dout;
 const unsigned char *m =&din;
const unsigned char *key=&dk;
unsigned long long inlen = gclen();
 crypto_onetimeauth_poly1305_donna(out,m,inlen,key);
}