/* Artifact: libexcavator.so | Address: 00106dcc | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

undefined1  [16] FUN_00106dcc(double param_1)

{
  double dVar1;
  double dVar2;
  undefined1 auVar3 [16];
  
  dVar1 = 1.0 - param_1 * param_1;
  dVar2 = 0.0;
  if (0.0 <= dVar1) {
    dVar2 = SQRT(dVar1);
  }
  auVar3._8_8_ = 0;
  auVar3._0_8_ = dVar2;
  return auVar3;
}

