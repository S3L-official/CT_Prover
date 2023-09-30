#include "../../ct-verif.h"

#include "sodium.h"

int crypto_core_salsa20_wrapper(unsigned char *out, const unsigned char *in,
                                const unsigned char *k, const unsigned char *c)
{
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(in));
  public_in(__SMACK_value(k));
  public_in(__SMACK_value(c));

  return crypto_core_salsa20(out,in,k,c);
}

unsigned char gout();
 const unsigned char gin();
const unsigned char gk();
 const unsigned char gc();

void crypto_core_salsa20_wrapper_t()
{
  unsigned char dout = gout();
   const unsigned char din = gin();
const unsigned char dk = gk();
 const unsigned char dc = gc();
 unsigned char *out =&dout;
 const unsigned char *in =&din;
const unsigned char *k=&dk;
const unsigned char *c=&dc;
  crypto_core_salsa20(out,in,k,c);
}