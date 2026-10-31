/* Artifact: libgnssparser.so | Address: 00102054 | Ghidra static pseudocode; types require review. */

void FUN_00102054(void)

{
  bool bVar1;
  short sVar2;
  undefined8 uVar3;
  uint extraout_w8;
  uint uVar4;
  uint extraout_w9;
  uint extraout_w9_00;
  uint uVar5;
  long lVar6;
  long *unaff_x19;
  short sVar7;
  
  FUN_00102938();
  bVar1 = 7 < extraout_w9;
  if (extraout_w9 == 8) {
    FUN_001029c4(*(ushort *)(*unaff_x19 + 6) + 0xc);
    if ((bVar1) &&
       (uVar4 = extraout_w8, uVar5 = extraout_w9_00, extraout_w8 < *(uint *)(unaff_x19 + 1)))
    goto LAB_0010209c;
  }
  else {
    uVar4 = *(uint *)(unaff_x19 + 0x1a);
    uVar5 = extraout_w9;
LAB_0010209c:
    if (uVar5 <= uVar4 - 1) {
      uVar3 = 1;
      goto LAB_00102114;
    }
    if (unaff_x19[0xe] != 0) {
      sVar7 = 0;
      for (lVar6 = 0; lVar6 < (int)(uVar4 - 0xc); lVar6 = lVar6 + 1) {
        sVar7 = sVar7 + (ushort)*(byte *)(*unaff_x19 + 8 + lVar6);
      }
      sVar2 = FUN_00102db0(*unaff_x19 + (ulong)uVar4 + -4);
      if (sVar7 == sVar2) {
        FUN_0010290c(unaff_x19[0xe]);
        uVar3 = FUN_001028f8();
        goto LAB_00102114;
      }
    }
  }
  uVar3 = 0;
LAB_00102114:
  FUN_0010297c(uVar3);
  return;
}

