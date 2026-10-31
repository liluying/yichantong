/* Artifact: libexcavator.so | Address: 001062d0 | Ghidra static pseudocode; types require review. */

void FUN_001062d0(double param_1,int *param_2)

{
  int iVar1;
  double *pdVar2;
  
  iVar1 = *param_2;
  *param_2 = iVar1 + 1;
  *(double *)(param_2 + 4) = *(double *)(param_2 + 4) + param_1 * param_1;
  *(double *)(param_2 + 2) = *(double *)(param_2 + 2) + param_1;
  if (iVar1 == 0) {
    *(double *)(param_2 + 8) = param_1;
    pdVar2 = (double *)(param_2 + 6);
  }
  else {
    if (param_1 < *(double *)(param_2 + 6)) {
      *(double *)(param_2 + 6) = param_1;
    }
    pdVar2 = (double *)(param_2 + 8);
    if (param_1 <= *pdVar2) {
      return;
    }
  }
  *pdVar2 = param_1;
  return;
}

