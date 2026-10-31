/* Artifact: libexcavator.so | Address: 00107400 | Ghidra static pseudocode; types require review. */

void FUN_00107400(double param_1,double param_2,double param_3,double param_4,double *param_5)

{
  double dVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  
  dVar1 = param_2 + param_2;
  dVar2 = param_3 + param_3;
  dVar3 = param_4 + param_4;
  dVar4 = 1.0 - param_2 * dVar1;
  param_5[2] = param_4 * dVar1 - param_1 * dVar2;
  param_5[3] = param_2 * dVar2 - param_1 * dVar3;
  param_5[6] = param_4 * dVar1 + param_1 * dVar2;
  param_5[7] = param_3 * dVar3 - param_1 * dVar1;
  *param_5 = (1.0 - param_3 * dVar2) - param_4 * dVar3;
  param_5[1] = param_2 * dVar2 + param_1 * dVar3;
  param_5[4] = dVar4 - param_4 * dVar3;
  param_5[5] = param_3 * dVar3 + param_1 * dVar1;
  param_5[8] = dVar4 - param_3 * dVar2;
  return;
}

