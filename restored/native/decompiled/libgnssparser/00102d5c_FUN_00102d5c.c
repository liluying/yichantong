/* Artifact: libgnssparser.so | Address: 00102d5c | Ghidra static pseudocode; types require review. */

void FUN_00102d5c(long param_1,byte *param_2)

{
  ulong uVar1;
  ulong uVar2;
  ulong uVar3;
  ulong uVar4;
  int iVar5;
  
  uVar3 = 0;
  if (param_1 != 0) {
    do {
      uVar4 = uVar3 & 0xff ^ (ulong)*param_2;
      iVar5 = -8;
      do {
        uVar1 = uVar4 >> 1;
        uVar2 = uVar4 & 1;
        uVar4 = uVar4 >> 1;
        if (uVar2 != 0) {
          uVar4 = uVar1 ^ 0xedb88320;
        }
        iVar5 = iVar5 + 1;
      } while (iVar5 != 0);
      param_1 = param_1 + -1;
      param_2 = param_2 + 1;
      uVar3 = uVar4 ^ uVar3 >> 8;
    } while (param_1 != 0);
  }
  FUN_00102ea4();
  return;
}

