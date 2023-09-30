#include "../../ct-verif.h"

#include "sodium.h"

int crypto_hash_sha256_wrapper(unsigned char *out, const unsigned char *in)
{
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(in));

  return crypto_hash_sha256(out,in,156);
}

unsigned char gout();
 const unsigned char gin();
const unsigned char gk();
 const unsigned char gc();
unsigned long long gclen();

void crypto_hash_sha256_wrapper_t()
{
  unsigned char dout = gout();
   const unsigned char din = gin();
const unsigned char dk = gk();
 const unsigned char dc = gc();
 unsigned char *out =&dout;
 const unsigned char *in =&din;

  crypto_hash_sha256(out,in,156);
}