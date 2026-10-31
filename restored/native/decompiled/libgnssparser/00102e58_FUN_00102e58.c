/* Artifact: libgnssparser.so | Address: 00102e58 | Ghidra static pseudocode; types require review. */

uint FUN_00102e58(uint param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  
  uVar2 = 0;
  for (lVar3 = 0; lVar3 != 6; lVar3 = lVar3 + 1) {
    uVar2 = uVar2 << 1;
    for (uVar1 = ((&DAT_001032f4)[lVar3] & param_1) >> 6; uVar1 != 0; uVar1 = uVar1 >> 1) {
      uVar2 = uVar1 & 1 ^ uVar2;
    }
  }
  return uVar2;
}

