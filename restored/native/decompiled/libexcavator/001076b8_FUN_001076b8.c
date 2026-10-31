/* Artifact: libexcavator.so | Address: 001076b8 | Ghidra static pseudocode; types require review. */

undefined1  [16] FUN_001076b8(double param_1,double param_2,double param_3,double param_4)

{
  float fVar1;
  double dVar2;
  undefined1 auVar3 [16];
  float fVar4;
  
  fVar4 = (float)(param_2 * param_3 + param_1 * param_4);
  fVar1 = (float)((0.5 - param_3 * param_3) - param_4 * param_4);
  fVar4 = SQRT(fVar4 * fVar4 + fVar1 * fVar1);
  if (fVar4 <= 9.536743e-07) {
    dVar2 = 1.0;
  }
  else {
    dVar2 = (double)SQRT((fVar1 / fVar4 + 1.0) * 0.5);
  }
  auVar3._8_8_ = 0;
  auVar3._0_8_ = dVar2;
  return auVar3;
}

