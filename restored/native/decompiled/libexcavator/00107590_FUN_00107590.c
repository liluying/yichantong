/* Artifact: libexcavator.so | Address: 00107590 | Ghidra static pseudocode; types require review. */

undefined1  [16] FUN_00107590(void)

{
  bool bVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  undefined1 auVar5 [16];
  undefined8 in_d3;
  undefined8 in_d4;
  undefined8 in_d5;
  undefined8 uVar6;
  
  dVar2 = (double)thunk_FUN_00107024();
  dVar3 = (double)thunk_FUN_00107024(in_d3,in_d4,in_d5);
  bVar1 = true;
  if ((9.5367431640625e-07 <= dVar2) && (bVar1 = false, !NAN(dVar3))) {
    bVar1 = dVar3 < 9.5367431640625e-07;
  }
  if (bVar1) {
    dVar2 = 1.0;
    uVar6 = 0;
  }
  else {
    FUN_00107784(0x3eb0000000000000,0);
    dVar4 = (double)FUN_00106f90();
    dVar4 = dVar4 / (dVar2 * dVar3);
    dVar2 = 1.0;
    uVar6 = 0;
    if (dVar4 < 1.0) {
      FUN_00107784();
      FUN_00106ffc();
      dVar3 = (double)thunk_FUN_00107024();
      if (9.5367431640625e-07 < dVar3) {
        dVar2 = SQRT((dVar4 + 1.0) * 0.5);
        uVar6 = 0;
      }
    }
  }
  auVar5._8_8_ = uVar6;
  auVar5._0_8_ = dVar2;
  return auVar5;
}

