#include "../ct-verif.h"

#define GENERIC_IMPLEMENTATION
#define __LINUX__
#define _X86_

#include "../fourq/fourqlib/eccp2_core.c"

void eccdouble_wrapper(point_extproj_t P)
{
  public_in(__SMACK_value(P));

  eccdouble(P);
}

point_extproj getpt();
point_affine getpt2();

void eccdouble_wrapper_t()
{
  point_extproj_t P = {getpt()};
  eccdouble(P);
}