/* Artifact: libexcavator.so | Address: 00106e90 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_0010706c */
/* WARNING: Inlined function: thunk_FUN_00107024 */

undefined1  [16] FUN_00106e90(double param_1,double param_2,double param_3)

{
  double dVar1;
  undefined1 auVar2 [16];
  
  dVar1 = SQRT(param_3 * param_3 + param_1 * param_1 + param_2 * param_2);
  if (9.5367431640625e-07 <= dVar1) {
    param_1 = param_1 * (1.0 / dVar1);
  }
  else {
    param_1 = 1.0;
  }
  auVar2._8_8_ = 0;
  auVar2._0_8_ = param_1;
  return auVar2;
}

