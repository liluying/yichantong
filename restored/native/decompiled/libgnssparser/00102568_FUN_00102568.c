/* Artifact: libgnssparser.so | Address: 00102568 | Ghidra static pseudocode; types require review. */

void FUN_00102568(long *param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined8 uVar4;
  uint uVar5;
  long lVar6;
  
  uVar1 = *(uint *)((long)param_1 + 0xc4);
  if (uVar1 < 6) {
LAB_001025bc:
    uVar4 = 1;
  }
  else {
    if (uVar1 == 6) {
      uVar5 = *(ushort *)(*param_1 + 4) + 10;
      *(uint *)(param_1 + 0x1a) = uVar5;
      if (uVar5 <= *(uint *)(param_1 + 1)) goto LAB_001025b4;
    }
    else {
      uVar5 = *(uint *)(param_1 + 0x1a);
LAB_001025b4:
      if (uVar1 < uVar5) goto LAB_001025bc;
      if (param_1[0x15] != 0) {
        iVar2 = FUN_00102db8(*param_1 + (long)(int)(uVar5 - 4));
        iVar3 = 0;
        for (lVar6 = 0; lVar6 < (int)(uVar5 - 4); lVar6 = lVar6 + 1) {
          iVar3 = iVar3 + (uint)*(byte *)(*param_1 + lVar6);
        }
        if ((iVar3 == iVar2) ||
           (iVar3 = FUN_00102d18(1,*param_1,*(undefined4 *)((long)param_1 + 0xc4)), iVar3 == 0)) {
          FUN_0010290c(param_1[0x15]);
          uVar4 = FUN_001028f8();
          goto LAB_00102634;
        }
      }
    }
    uVar4 = 0;
  }
LAB_00102634:
  FUN_0010297c(uVar4);
  return;
}

