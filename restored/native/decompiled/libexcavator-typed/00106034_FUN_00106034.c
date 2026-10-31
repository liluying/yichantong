/* Artifact: libexcavator.so | Address: 00106034 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: quat_rotate */

undefined1  [16] FUN_00106034(double param_1,double param_2,double param_3,double param_4)

{
  long unaff_x20;
  long lVar1;
  undefined1 auVar2 [16];
  double dVar3;
  
  lVar1 = *(long *)(unaff_x20 + 8);
  dVar3 = param_3 + param_3;
  auVar2._0_8_ = *(double *)(lVar1 + 0x78) * (param_4 * (param_2 + param_2) + param_1 * dVar3) +
                 *(double *)(lVar1 + 0x70) * (param_2 * dVar3 - param_1 * (param_4 + param_4)) +
                 *(double *)(lVar1 + 0x68) *
                 ((1.0 - param_3 * dVar3) - param_4 * (param_4 + param_4));
  auVar2._8_8_ = 0;
  return auVar2;
}

