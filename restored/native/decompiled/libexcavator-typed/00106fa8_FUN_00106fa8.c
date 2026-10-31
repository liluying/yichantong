/* Artifact: libexcavator.so | Address: 00106fa8 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_0010706c */
/* WARNING: Inlined function: FUN_00106ef0 */
/* WARNING: Inlined function: point_subtract */

undefined1  [16]
FUN_00106fa8(double param_1,double param_2,double param_3,double param_4,double param_5,
            double param_6)

{
  double dVar1;
  double dVar2;
  undefined1 auVar3 [16];
  
  dVar1 = param_6 * param_6 + param_4 * param_4 + param_5 * param_5;
  dVar2 = param_1;
  if (9.5367431640625e-07 <= dVar1) {
    dVar2 = param_4 * ((param_3 * param_6 + param_1 * param_4 + param_2 * param_5) / dVar1);
  }
  auVar3._0_8_ = param_1 - dVar2;
  auVar3._8_8_ = 0;
  return auVar3;
}

