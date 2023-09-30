#include "../../ct-verif.h"

#include "sodium.h"

int crypto_stream_chacha20_wrapper(unsigned char *c, unsigned long long clen,
                                   const unsigned char *n, const unsigned char *k) {
  public_in(__SMACK_value(c));
  public_in(__SMACK_value(clen));
  public_in(__SMACK_value(n));
  public_in(__SMACK_value(k));

  public_in(__SMACK_values(n,crypto_stream_chacha20_NONCEBYTES));

  return crypto_stream_chacha20(c,clen,n,k);
}

unsigned char gout();
 const unsigned char gin();
const unsigned char gk();
 const unsigned char gc();
unsigned long long gclen();
void crypto_stream_chacha20_wrapper_t()
{
  unsigned char dout = gout();
   const unsigned char din = gin();
const unsigned char dk = gk();
 const unsigned char dc = gc();
 unsigned char *c =&dout;
 const unsigned char *n =&din;
const unsigned char *k=&dk;
unsigned long long clen = gclen();
  crypto_stream_chacha20(c,clen,n,k);
}