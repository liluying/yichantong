/* Artifact: libgnssparser.so | Address: 00102a00 | Ghidra static pseudocode; types require review. */

int gnssparser_pack_lcgx(long param_1,undefined2 *param_2,int param_3,long param_4,int param_5)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  
  if ((param_5 - 2U < 0xfffe) && (iVar4 = param_5 + 8, iVar4 <= param_3)) {
    uVar1 = FUN_00102c80(0x6a8e,param_4,param_5);
    if (param_1 == 0) {
      uVar3 = 1;
    }
    else {
      uVar3 = (uint)*(ushort *)(param_1 + 0xe8);
    }
    uVar3 = (uVar3 ^ uVar1) * uVar1;
    *(char *)(param_2 + 1) = (char)(param_5 + 4);
    *param_2 = 0x95f5;
    *(char *)((long)param_2 + 3) = (char)((uint)(param_5 + 4) >> 8);
    *(char *)(param_2 + 2) = (char)uVar3;
    *(char *)((long)param_2 + 7) = (char)(uVar1 >> 8);
    *(char *)((long)param_2 + 5) = (char)(uVar3 >> 8);
    uVar3 = (uVar3 & 0xffff) + 1;
    *(char *)(param_2 + 3) = (char)uVar1;
    for (lVar2 = 0; lVar2 < param_5; lVar2 = lVar2 + 1) {
      uVar3 = (uVar3 * 0x3ec5) % 0x7d33;
      *(byte *)((long)param_2 + lVar2 + 8) = *(byte *)(param_4 + lVar2) ^ (byte)uVar3;
    }
  }
  else {
    iVar4 = 0;
  }
  return iVar4;
}

