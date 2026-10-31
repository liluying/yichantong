/* Artifact: libgnssparser.so | Address: 0010211c | Ghidra static pseudocode; types require review. */

void FUN_0010211c(long param_1)

{
  uint uVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  short sVar4;
  short sVar5;
  undefined8 uVar6;
  uint extraout_w8;
  uint extraout_w8_00;
  long *unaff_x19;
  
  FUN_00102938(*(undefined4 *)(param_1 + 0xc4));
  uVar2 = 7 < extraout_w8;
  if (extraout_w8 == 8) {
    uVar3 = FUN_00102db0(*unaff_x19 + 6);
    FUN_001029c4(uVar3);
    if (((bool)uVar2) && (uVar1 = extraout_w8_00, extraout_w8_00 < *(uint *)(unaff_x19 + 1)))
    goto joined_r0x00102164;
  }
  else {
    uVar1 = *(uint *)(unaff_x19 + 0x1a);
joined_r0x00102164:
    if ((uVar1 == 0) || (*(uint *)((long)unaff_x19 + 0xc4) < uVar1)) {
      uVar6 = 1;
      goto LAB_001021c4;
    }
    if (unaff_x19[0xf] != 0) {
      sVar4 = FUN_00102984();
      sVar5 = FUN_00102c80(0,*unaff_x19 + 4,(int)unaff_x19[0x1a] + -4);
      uVar6 = 0;
      if (sVar4 == sVar5) {
        FUN_0010290c(unaff_x19[0xf],0);
        uVar6 = FUN_001028f8();
      }
      goto LAB_001021c4;
    }
  }
  uVar6 = 0;
LAB_001021c4:
  FUN_0010297c(uVar6);
  return;
}

