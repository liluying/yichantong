/* Artifact: libexcavator.so | Address: 00101fec | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: thunk_FUN_00107024 */

int FUN_00101fec(double *param_1)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  int iVar4;
  long lVar5;
  double dVar6;
  
  dVar6 = *param_1;
  bVar1 = false;
  bVar2 = false;
  bVar3 = false;
  if (DAT_00107800 <= dVar6) {
    bVar1 = false;
    bVar2 = false;
    bVar3 = true;
    if (!NAN(dVar6)) {
      bVar1 = dVar6 < 100.0;
      bVar2 = dVar6 == 100.0;
      bVar3 = false;
    }
  }
  if (bVar2 || bVar1 != bVar3) {
    param_1 = param_1 + 3;
    for (lVar5 = 0; lVar5 != 4; lVar5 = lVar5 + 1) {
      if (10.0 < SQRT(*param_1 * *param_1 + param_1[-2] * param_1[-2] + param_1[-1] * param_1[-1]))
      {
        return -2 - (int)lVar5;
      }
      param_1 = param_1 + 3;
    }
    iVar4 = 0;
  }
  else {
    iVar4 = -1;
  }
  return iVar4;
}

