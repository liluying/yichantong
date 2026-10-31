/* Artifact: libexcavator.so | Address: 00101b28 | Ghidra static pseudocode; types require review. */

void FUN_00101b28(undefined1 param_1 [16],undefined1 param_2 [16],undefined8 param_3,
                 undefined8 param_4)

{
  undefined1 in_ZR;
  undefined8 uVar1;
  long extraout_x9;
  long unaff_x19;
  long lVar2;
  long unaff_x20;
  double dVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  FUN_001058ec();
  FUN_001062b8();
  if ((bool)in_ZR) {
    dVar3 = (double)FUN_00105ebc();
    *(double *)(extraout_x9 + 0x30) = dVar3 + *(double *)(extraout_x9 + 0x30);
    lVar2 = *(long *)(unaff_x20 + 8);
    uVar5 = *(undefined8 *)(*(long *)(unaff_x19 + 8) + 0x58);
    thunk_FUN_00107064(*(undefined8 *)(*(long *)(unaff_x19 + 8) + 0x38));
    uVar4 = FUN_001070a4();
    uVar1 = 0;
    *(undefined8 *)(lVar2 + 0x50) = uVar4;
    *(undefined8 *)(lVar2 + 0x58) = uVar5;
    *(undefined8 *)(lVar2 + 0x60) = param_3;
    *(undefined8 *)(lVar2 + 0x68) = param_4;
  }
  else {
    uVar1 = 0xffffffff;
  }
  FUN_00105be0(uVar1);
  return;
}

