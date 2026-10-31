/* Artifact: libexcavator.so | Address: 00106ef0 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_0010706c */
/* WARNING: Inlined function: FUN_00106f78 */
/* WARNING: Inlined function: FUN_0010707c */
/* WARNING: Inlined function: FUN_00107040 */
/* WARNING: Inlined function: FUN_00106f90 */
/* WARNING: Inlined function: FUN_00107050 */

undefined1  [16]
FUN_00106ef0(undefined1 param_1 [16],double param_2,double param_3,double param_4,double param_5,
            double param_6)

{
  double dVar1;
  double dVar2;
  undefined1 auVar3 [16];
  undefined8 uVar4;
  
  uVar4 = param_1._8_8_;
  dVar2 = param_1._0_8_;
  dVar1 = param_6 * param_6 + param_4 * param_4 + param_5 * param_5;
  if (9.5367431640625e-07 <= dVar1) {
    dVar2 = param_4 * ((param_3 * param_6 + dVar2 * param_4 + param_2 * param_5) / dVar1);
    uVar4 = 0;
  }
  auVar3._8_8_ = uVar4;
  auVar3._0_8_ = dVar2;
  return auVar3;
}

