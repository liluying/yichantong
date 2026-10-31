/* Artifact: libexcavator.so | Address: 00106e90 | Ghidra static pseudocode; types require review. */

undefined1  [16] FUN_00106e90(void)

{
  double dVar1;
  undefined1 auVar2 [16];
  double unaff_d10;
  
  FUN_0010706c();
  dVar1 = (double)thunk_FUN_00107024();
  if (9.5367431640625e-07 <= dVar1) {
    dVar1 = unaff_d10 * (1.0 / dVar1);
  }
  else {
    dVar1 = 1.0;
  }
  auVar2._8_8_ = 0;
  auVar2._0_8_ = dVar1;
  return auVar2;
}

