/* Artifact: libgnssparser.so | Address: 00102afc | Ghidra static pseudocode; types require review. */

int gnssparser_pack_kalx(long param_1,undefined2 *param_2,int param_3,long param_4,int param_5)

{
  uint uVar1;
  undefined4 uVar2;
  long lVar3;
  uint uVar4;
  int iVar5;
  
  iVar5 = 0;
  if ((param_1 != 0) && (param_5 - 2U < 0xfffe)) {
    iVar5 = param_5 + 0x10;
    if (param_3 < iVar5) {
      iVar5 = 0;
    }
    else {
      uVar1 = FUN_00102c80(0xe72a,param_4,param_5);
      *param_2 = 0x96f6;
      FUN_00102dc0(param_2 + 1,param_5);
      FUN_00102dc0(param_2 + 2,uVar1);
      param_2[3] = 0;
      FUN_00102de8(param_2 + 4,*(undefined4 *)(param_1 + 0xf0));
      FUN_00102dc0(param_2 + 6,*(undefined2 *)(param_1 + 0xea));
      uVar4 = uVar1 & 0xffff;
      for (lVar3 = 6; lVar3 != 0xe; lVar3 = lVar3 + 1) {
        uVar4 = (uVar4 * 0x4e35) % 0x4e37;
        *(byte *)((long)param_2 + lVar3) = *(byte *)((long)param_2 + lVar3) ^ (byte)uVar4;
      }
      uVar2 = FUN_00102c80(0x32f2,param_2,0xe);
      FUN_00102dd0(param_2 + 7,uVar2);
      uVar4 = (*(uint *)(param_1 + 0xf0) ^ uVar1 & 0xffff ^ (uint)*(ushort *)(param_1 + 0xea)) %
              0x755f;
      for (lVar3 = 0; lVar3 < param_5; lVar3 = lVar3 + 1) {
        uVar4 = (((uint)(*(ulong *)(param_1 + 0xf8) >> (uVar4 & 7)) & 0xffff ^ uVar4) * 0x4e5f) %
                0x755f;
        *(byte *)((long)param_2 + lVar3 + 0x10) = *(byte *)(param_4 + lVar3) ^ (byte)uVar4;
      }
    }
  }
  return iVar5;
}

