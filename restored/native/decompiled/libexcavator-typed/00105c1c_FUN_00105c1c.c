/* Artifact: libexcavator.so | Address: 00105c1c | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: quat_rotate */

undefined1  [16] FUN_00105c1c(double param_1,double param_2,double param_3)

{
  undefined1 auVar1 [16];
  double unaff_d9;
  double unaff_d10;
  double unaff_d11;
  double unaff_d15;
  double dVar2;
  
  dVar2 = unaff_d11 + unaff_d11;
  auVar1._0_8_ = param_3 * (unaff_d15 * (unaff_d10 + unaff_d10) + unaff_d9 * dVar2) +
                 param_2 * (unaff_d10 * dVar2 - unaff_d9 * (unaff_d15 + unaff_d15)) +
                 param_1 * ((1.0 - unaff_d11 * dVar2) - unaff_d15 * (unaff_d15 + unaff_d15));
  auVar1._8_8_ = 0;
  return auVar1;
}

