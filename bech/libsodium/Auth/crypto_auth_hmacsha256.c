#include "../../ct-verif.h"

#include "sodium.h"

int crypto_auth_hmacsha256_wrapper(unsigned char *out, const unsigned char *in,
                    unsigned long long inlen, const unsigned char *k)
{
  /* Argument addresses are public for now */
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(in));
  public_in(__SMACK_value(k));

  /* Annotations */
  public_in(__SMACK_value(inlen));

  return crypto_auth_hmacsha256(out,in,inlen,k);
}


unsigned char gout();
 const unsigned char gin();
const unsigned char gk();
 const unsigned char gc();
unsigned long long gclen();
void crypto_auth_hmacsha256_wrapper_t()
{
  unsigned char dout = gout();
   const unsigned char din = gin();
const unsigned char dk = gk();
 const unsigned char dc = gc();
 unsigned char *out =&dout;
 const unsigned char *in =&din;
const unsigned char *k=&dk;
unsigned long long inlen = gclen();
  crypto_auth_hmacsha256(out,in,inlen,k);
}