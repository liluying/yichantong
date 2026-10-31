/* Artifact: libexcavator.so | Address: 001070a4 | Ghidra static pseudocode; types require review. */

undefined1  [16] FUN_001070a4(double param_1,double param_2,double param_3)

{
  undefined1 auVar1 [16];
  double dVar2;
  double dVar3;
  
  dVar2 = 1.0;
  dVar3 = 1.0 - (param_3 * param_3 + param_1 * param_1 + param_2 * param_2);
  if (0.0 < dVar3) {
    dVar2 = SQRT(dVar3);
  }
  auVar1._8_8_ = 0;
  auVar1._0_8_ = dVar2;
  return auVar1;
}

