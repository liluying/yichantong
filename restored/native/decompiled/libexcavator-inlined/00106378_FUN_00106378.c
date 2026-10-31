/* Artifact: libexcavator.so | Address: 00106378 | Ghidra static pseudocode; types require review. */

void FUN_00106378(double param_1,int *param_2)

{
  double dVar1;
  double dVar2;
  double dVar3;
  
  if (*param_2 < 1) {
    dVar1 = 0.0;
    dVar3 = 0.0;
  }
  else {
    dVar2 = (double)*param_2;
    dVar1 = *(double *)(param_2 + 2) / dVar2;
    dVar2 = (dVar2 * param_1 * param_1 + *(double *)(param_2 + 4) +
            param_1 * -2.0 * *(double *)(param_2 + 2)) / dVar2;
    dVar3 = SQRT(dVar2);
    if (dVar2 <= 0.0) {
      dVar3 = 0.0;
    }
  }
  *(double *)(param_2 + 10) = dVar1;
  *(double *)(param_2 + 0xc) = dVar3;
  return;
}

