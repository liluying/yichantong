/* Artifact: libgnssparser.so | Address: 0010263c | Ghidra static pseudocode; types require review. */

void FUN_0010263c(long *param_1)

{
  short sVar1;
  short sVar2;
  uint uVar3;
  undefined8 uVar4;
  uint uVar5;
  
  uVar5 = *(uint *)((long)param_1 + 0xc4);
  if (uVar5 < 8) {
LAB_00102694:
    uVar4 = 1;
  }
  else {
    if (uVar5 == 8) {
      uVar3 = FUN_00102db8(*param_1 + 4);
      *(uint *)(param_1 + 0x1a) = uVar3;
      if ((0xf < uVar3) && (uVar3 <= *(uint *)(param_1 + 1))) {
        uVar5 = *(uint *)((long)param_1 + 0xc4);
        goto LAB_0010268c;
      }
    }
    else {
      uVar3 = *(uint *)(param_1 + 0x1a);
LAB_0010268c:
      if (uVar5 < uVar3) goto LAB_00102694;
      if (param_1[0x16] != 0) {
        sVar2 = FUN_00102984();
        uVar4 = FUN_00102c80(0,*param_1 + 8,*(int *)((long)param_1 + 0xc4) + -8);
        if ((sVar2 == 0) || (sVar1 = (short)uVar4, uVar4 = 0, sVar2 == sVar1)) {
          FUN_0010290c(param_1[0x16],uVar4);
          uVar4 = FUN_001028f8();
        }
        goto LAB_001026e8;
      }
    }
    uVar4 = 0;
  }
LAB_001026e8:
  FUN_0010297c(uVar4);
  return;
}

