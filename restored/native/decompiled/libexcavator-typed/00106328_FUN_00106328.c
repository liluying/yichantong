/* Artifact: libexcavator.so | Address: 00106328 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

void FUN_00106328(int *param_1)

{
  int iVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  
  iVar1 = *param_1;
  dVar2 = *(double *)(param_1 + 2);
  dVar3 = 0.0;
  if (1 < iVar1) {
    dVar2 = dVar2 / (double)iVar1;
    dVar4 = (*(double *)(param_1 + 4) - dVar2 * dVar2 * (double)iVar1) / (double)(iVar1 + -1);
    dVar3 = SQRT(dVar4);
    if (dVar4 <= 0.0) {
      dVar3 = 0.0;
    }
  }
  *(double *)(param_1 + 10) = dVar2;
  *(double *)(param_1 + 0xc) = dVar3;
  return;
}

