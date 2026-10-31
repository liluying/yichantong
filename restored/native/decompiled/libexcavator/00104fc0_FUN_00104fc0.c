/* Artifact: libexcavator.so | Address: 00104fc0 | Ghidra static pseudocode; types require review. */

void FUN_00104fc0(void)

{
  undefined1 in_ZR;
  undefined8 uVar1;
  long extraout_x8;
  long extraout_x9;
  long extraout_x9_00;
  double extraout_d0;
  
  FUN_001058ec();
  FUN_001062b8();
  if ((bool)in_ZR) {
    FUN_00106298();
    FUN_0010601c();
    *(double *)(extraout_x9 + 0x70) =
         *(double *)(extraout_x8 + 0x38) + *(double *)(extraout_x9 + 0x70);
    uVar1 = FUN_00105c84();
    *(double *)(extraout_x9_00 + 0x78) = extraout_d0 + *(double *)(extraout_x9_00 + 0x78);
  }
  else {
    uVar1 = 0xffffffff;
  }
  FUN_00105be0(uVar1);
  return;
}

