/* Artifact: libexcavator.so | Address: 00106da8 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

undefined1  [16] FUN_00106da8(double param_1,double param_2,double param_3)

{
  undefined1 auVar1 [16];
  
  auVar1._0_8_ = ((param_2 * param_2 + param_3 * param_3) - param_1 * param_1) /
                 ((param_2 + param_2) * param_3);
  auVar1._8_8_ = 0;
  return auVar1;
}

