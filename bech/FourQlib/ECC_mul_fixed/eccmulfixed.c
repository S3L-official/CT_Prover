#include "../ct-verif.h"

#define GENERIC_IMPLEMENTATION
#define __LINUX__
#define _X86_

#include "../fourq/fourqlib/eccp2_core.c"

void eccdouble_wrapper(point_precomp_t *P_table, digit64_256_t k, point_t Q, PCurveStruct curve)
{
  public_in(__SMACK_value(P_table));
  public_in(__SMACK_value(Q));
  public_in(__SMACK_value(curve));


  ecc_mul_fixed(P_table, k, Q, curve);
}

point_precomp_t getobj();
digit64_256_t getk();
point_t getp();
PCurveStruct getcur();
void eccdouble_wrapper_t()
{
  point_precomp_t obj = {getobj()};
  digit64_256_t k = getk();
  point_t Q = getp();
  PCurveStruct curve = getcur();
  ecc_mul_fixed(P_table, k, Q, curve);
}