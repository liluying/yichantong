/* Artifact: libexcavator.so | Address: 0010500c | Ghidra static pseudocode; types require review. */

void FUN_0010500c(void)

{
  undefined1 in_ZR;
  undefined8 uVar1;
  long extraout_x9;
  long extraout_x9_00;
  long unaff_x19;
  long unaff_x20;
  double dVar2;
  double extraout_d0;
  
  FUN_001058ec();
  FUN_001062b8();
  if ((bool)in_ZR) {
    dVar2 = (double)FUN_00106298();
    *(double *)(extraout_x9 + 0x80) = dVar2 + *(double *)(extraout_x9 + 0x80);
    *(double *)(*(long *)(unaff_x20 + 8) + 0x88) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x38) + *(double *)(*(long *)(unaff_x20 + 8) + 0x88)
    ;
    uVar1 = FUN_00105c84();
    *(double *)(extraout_x9_00 + 0x90) = extraout_d0 + *(double *)(extraout_x9_00 + 0x90);
  }
  else {
    uVar1 = 0xffffffff;
  }
  FUN_00105be0(uVar1);
  return;
}

