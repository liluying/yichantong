/* Artifact: libexcavator.so | Address: 00106ce8 | Ghidra static pseudocode; types require review. */

void FUN_00106ce8(double param_1,undefined8 param_2,undefined8 param_3,double *param_4)

{
  long lVar1;
  long lVar2;
  double *pdVar3;
  double dVar4;
  double local_30 [6];
  
  local_30[0] = param_1;
  local_30[1] = (double)param_2;
  local_30[2] = (double)param_3;
  for (lVar1 = 0; lVar1 != 3; lVar1 = lVar1 + 1) {
    dVar4 = 0.0;
    pdVar3 = param_4;
    for (lVar2 = 0; lVar2 != 0x18; lVar2 = lVar2 + 8) {
      dVar4 = dVar4 + *pdVar3 * *(double *)((long)local_30 + lVar2);
      pdVar3 = pdVar3 + 3;
    }
    local_30[lVar1 + 3] = dVar4;
    param_4 = param_4 + 1;
  }
  FUN_00106d6c();
  return;
}

