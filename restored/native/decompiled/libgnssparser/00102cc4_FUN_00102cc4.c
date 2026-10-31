/* Artifact: libgnssparser.so | Address: 00102cc4 | Ghidra static pseudocode; types require review. */

uint FUN_00102cc4(uint param_1,byte *param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  
  if (param_3 != 0) {
    do {
      param_3 = param_3 + -1;
      for (uVar2 = 0x80; uVar2 != 0; uVar2 = uVar2 >> 1) {
        uVar1 = param_1 << 1;
        if ((param_1 & 0x800000) != 0) {
          uVar1 = param_1 << 1 ^ 0x864cfb;
        }
        param_1 = uVar1;
        if ((uVar2 & *param_2) != 0) {
          param_1 = uVar1 ^ 0x864cfb;
        }
      }
      param_2 = param_2 + 1;
    } while (param_3 != 0);
  }
  return param_1 & 0xffffff;
}

