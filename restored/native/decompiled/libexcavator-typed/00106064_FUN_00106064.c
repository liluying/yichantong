/* Artifact: libexcavator.so | Address: 00106064 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_00106da8 */

undefined1  [16] FUN_00106064(double param_1,double param_2,undefined1 param_3 [16],double param_4)

{
  undefined1 auVar1 [16];
  
  auVar1._0_8_ = ((param_2 * param_2 + param_4 * param_4) - param_1 * param_1) /
                 ((param_2 + param_2) * param_4);
  auVar1._8_8_ = 0;
  return auVar1;
}

