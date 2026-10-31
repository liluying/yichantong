/* Artifact: libexcavator.so | Address: 00107370 | Ghidra static pseudocode; types require review. */

undefined1  [16]
FUN_00107370(double param_1,double param_2,double param_3,double param_4,double param_5,
            double param_6,double param_7,double param_8)

{
  double dVar1;
  undefined1 auVar2 [16];
  
  dVar1 = ((param_1 * param_5 - param_2 * param_6) - param_3 * param_7) - param_4 * param_8;
  if (dVar1 < 0.0) {
    dVar1 = -dVar1;
  }
  auVar2._8_8_ = 0;
  auVar2._0_8_ = dVar1;
  return auVar2;
}

