#include "../ct-verif.h"

#define GENERIC_IMPLEMENTATION
#define __LINUX__
#define _X86_

#include "../fourq/fourqlib/eccp2_core.c"

void eccmadd_wrapper(point_precomp_t Q, point_extproj_t P)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  eccmadd(Q,P);
}

point_extproj getpt();
point_affine getpt2();

void eccmadd_wrapper_t()
{
  point_extproj_t P = {getpt()};
  point_t Q = {getpt2()};
  eccmadd(P,Q);
}