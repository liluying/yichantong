/* Artifact: libgnssparser.so | Address: 00101c24 | Ghidra static pseudocode; types require review. */

void FUN_00101c24(long *param_1)

{
  uint uVar1;
  undefined8 uVar2;
  uint uVar3;
  long lVar4;
  
  if ((*(byte *)(*param_1 + (ulong)(*(int *)((long)param_1 + 0xc4) - 1)) & 0xc0) == 0x40) {
    if (*(int *)((long)param_1 + 0xc4) != 10) {
      uVar3 = *(uint *)(param_1 + 0x1a);
      if (uVar3 != 0) {
LAB_00101cdc:
        if (uVar3 <= *(uint *)((long)param_1 + 0xc4)) {
          if (param_1[7] != 0) {
            FUN_0010291c(*param_1);
            uVar2 = FUN_001028f8();
            goto LAB_00101d0c;
          }
          goto LAB_00101d08;
        }
      }
      uVar2 = 1;
      goto LAB_00101d0c;
    }
    uVar3 = 0;
    for (lVar4 = 4; lVar4 != 10; lVar4 = lVar4 + 1) {
      for (uVar1 = 0; uVar1 != 6; uVar1 = uVar1 + 1) {
        uVar3 = *(byte *)(*param_1 + lVar4) >> (ulong)(uVar1 & 0x1f) & 1 | uVar3 << 1;
      }
    }
    if ((uVar3 & 0x40000000) != 0) {
      uVar3 = uVar3 ^ 0x3fffffc0;
    }
    uVar1 = FUN_00102e58(uVar3);
    if (uVar1 == (uVar3 & 0x3f)) {
      uVar3 = (uVar3 >> 9 & 0x1f) * 5 + 10;
      *(uint *)(param_1 + 0x1a) = uVar3;
      if (uVar3 < *(uint *)(param_1 + 1)) goto LAB_00101cdc;
    }
  }
LAB_00101d08:
  uVar2 = 0;
LAB_00101d0c:
  FUN_0010297c(uVar2);
  return;
}

