/* Artifact: libexcavator.so | Address: 00107478 | Ghidra static pseudocode; types require review. */

undefined1  [16]
FUN_00107478(double param_1,double param_2,double param_3,double param_4,double param_5,
            double param_6,double param_7)

{
  undefined1 auVar1 [16];
  double dVar2;
  
  dVar2 = param_3 + param_3;
  auVar1._0_8_ = param_7 * (param_4 * (param_2 + param_2) + param_1 * dVar2) +
                 param_6 * (param_2 * dVar2 - param_1 * (param_4 + param_4)) +
                 param_5 * ((1.0 - param_3 * dVar2) - param_4 * (param_4 + param_4));
  auVar1._8_8_ = 0;
  return auVar1;
}

