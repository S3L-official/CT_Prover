#include "../ct-verif.h"

#define GENERIC_IMPLEMENTATION
#define __LINUX__
#define _X86_

#include "../fourq/fourqlib/eccp2_core.c"

void eccnorm_wrapper(point_extproj_t P, point_t Q)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  eccnorm(P,Q);
}

point_extproj getpt();
point_affine getpt2();

void eccnorm_wrapper_t()
{
  point_extproj_t P = {getpt()};
  point_t Q = {getpt2()};
  eccnorm(P,Q);
}