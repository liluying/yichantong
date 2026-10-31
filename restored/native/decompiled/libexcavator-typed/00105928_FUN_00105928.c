/* Artifact: libexcavator.so | Address: 00105928 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_rotate */

undefined1  [16]
FUN_00105928(double param_1,double param_2,double param_3,double param_4,double param_5,
            double param_6,double param_7)

{
  undefined1 auVar1 [16];
  double dVar2;
  
  dVar2 = param_7 + param_7;
  auVar1._0_8_ = param_3 * (param_4 * (param_2 + param_2) + param_1 * dVar2) +
                 param_6 * (param_2 * dVar2 - param_1 * (param_4 + param_4)) +
                 param_5 * ((1.0 - param_7 * dVar2) - param_4 * (param_4 + param_4));
  auVar1._8_8_ = 0;
  return auVar1;
}

