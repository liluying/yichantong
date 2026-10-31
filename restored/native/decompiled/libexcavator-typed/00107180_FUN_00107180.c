/* Artifact: libexcavator.so | Address: 00107180 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_001077a0 */
/* WARNING: Inlined function: FUN_00107770 */
/* WARNING: Inlined function: FUN_00107750 */

undefined1  [16] FUN_00107180(void)

{
  double dVar1;
  undefined1 auVar2 [16];
  double in_d3;
  
                    /* WARNING: Return address prevents inlining here */
  dVar1 = (double)thunk_FUN_00107024();
  if (9.5367431640625e-07 <= dVar1) {
    dVar1 = sin(in_d3 * DAT_00108020);
    dVar1 = SQRT(1.0 - dVar1 * dVar1);
  }
  else {
    dVar1 = 1.0;
  }
  auVar2._8_8_ = 0;
  auVar2._0_8_ = dVar1;
  return auVar2;
}

