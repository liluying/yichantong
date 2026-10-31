/* Artifact: libexcavator.so | Address: 0010528c | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001061b4 */
/* WARNING: Inlined function: FUN_00105e30 */
/* WARNING: Inlined function: FUN_00106154 */
/* WARNING: Inlined function: point_make */
/* WARNING: Inlined function: FUN_001060e0 */
/* WARNING: Inlined function: FUN_00105b3c */
/* WARNING: Inlined function: FUN_00105db0 */
/* WARNING: Inlined function: FUN_0010623c */
/* WARNING: Inlined function: FUN_00105aa4 */
/* WARNING: Inlined function: FUN_00105ecc */
/* WARNING: Inlined function: FUN_001060d8 */

void FUN_0010528c(undefined4 *param_1,void *param_2,int param_3)

{
  long lVar1;
  ushort uVar2;
  undefined8 uVar3;
  long lVar4;
  float *pfVar5;
  uint uVar6;
  undefined1 auStack_170 [4];
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined8 uStack_148;
  float local_140;
  float fStack_138;
  float afStack_134 [11];
  byte local_108;
  ushort local_107;
  byte local_105;
  float local_104;
  float fStack_100;
  float local_fc;
  float fStack_f8;
  float local_f4;
  float fStack_f0;
  float local_ec;
  float fStack_e8;
  float local_e4;
  long local_88;
  
  lVar1 = tpidr_el0;
  local_88 = *(long *)(lVar1 + 0x28);
  memset(param_1,0,0x138);
  if (param_3 - 4U < 0x7d) {
    memcpy(&local_108,param_2,(long)param_3);
    uVar6 = (uint)local_107 + (uint)local_108;
    for (lVar4 = 3; lVar4 < param_3; lVar4 = lVar4 + 1) {
      uVar6 = (uVar6 * 0x1c55) % 0x6a93;
      (&local_108)[lVar4] = (&local_108)[lVar4] ^ (byte)uVar6;
    }
                    /* WARNING: Return address prevents inlining here */
    uVar2 = crc16_update((ushort)local_108,(uchar *)((ulong)&local_108 | 3),param_3 + -3);
    if ((uint)local_107 == (uint)uVar2) {
      if (local_108 == 3) {
        if (0x5f < param_3 && local_105 == '\x01') {
          memcpy(auStack_170,&local_108,0x60);
          *param_1 = 3;
          *(double *)(param_1 + 2) = (double)fStack_16c;
          *(double *)(param_1 + 4) = (double)fStack_168;
          *(double *)(param_1 + 6) = (double)fStack_164;
          *(double *)(param_1 + 10) = (double)(float)((ulong)uStack_160 >> 0x20);
          *(double *)(param_1 + 8) = (double)(float)uStack_160;
          *(double *)(param_1 + 0xe) = (double)(float)((ulong)uStack_158 >> 0x20);
          *(double *)(param_1 + 0xc) = (double)(float)uStack_158;
          *(double *)(param_1 + 0x12) = (double)(float)((ulong)uStack_150 >> 0x20);
          *(double *)(param_1 + 0x10) = (double)(float)uStack_150;
          *(double *)(param_1 + 0x16) = (double)(float)((ulong)uStack_148 >> 0x20);
          *(double *)(param_1 + 0x14) = (double)(float)uStack_148;
          pfVar5 = &fStack_138;
          for (lVar4 = 0; lVar4 != 0x60; lVar4 = lVar4 + 0x18) {
            uVar3 = *(undefined8 *)(pfVar5 + -2);
            *(double *)((long)param_1 + lVar4 + 0x68) = (double)(float)((ulong)uVar3 >> 0x20);
            *(double *)((long)param_1 + lVar4 + 0x60) = (double)(float)uVar3;
            *(double *)((long)param_1 + lVar4 + 0x70) = (double)*pfVar5;
            pfVar5 = pfVar5 + 3;
          }
                    /* WARNING: Could not inline here */
          uVar3 = FUN_001060d8();
          if ((int)uVar3 != 0) {
                    /* WARNING: Could not inline here */
            FUN_00105b3c();
            uVar3 = 0xfffffff9;
          }
          goto LAB_0010544c;
        }
      }
      else if (local_108 == 2) {
        if (99 < param_3 && local_105 == '\x01') {
          memcpy(auStack_170,&local_108,100);
          *param_1 = 2;
          *(double *)(param_1 + 2) = (double)fStack_16c;
          *(double *)(param_1 + 4) = (double)fStack_168;
          *(double *)(param_1 + 6) = (double)fStack_164;
          *(double *)(param_1 + 10) = (double)(float)((ulong)uStack_160 >> 0x20);
          *(double *)(param_1 + 8) = (double)(float)uStack_160;
          *(double *)(param_1 + 0xe) = (double)(float)((ulong)uStack_158 >> 0x20);
          *(double *)(param_1 + 0xc) = (double)(float)uStack_158;
          *(double *)(param_1 + 0x12) = (double)(float)((ulong)uStack_150 >> 0x20);
          *(double *)(param_1 + 0x10) = (double)(float)uStack_150;
          *(double *)(param_1 + 0x16) = (double)(float)((ulong)uStack_148 >> 0x20);
          *(double *)(param_1 + 0x14) = (double)(float)uStack_148;
          *(double *)(param_1 + 0x18) = (double)local_140;
          pfVar5 = afStack_134;
          for (lVar4 = 0; lVar4 != 0x60; lVar4 = lVar4 + 0x18) {
            uVar3 = *(undefined8 *)(pfVar5 + -2);
            *(double *)((long)param_1 + lVar4 + 0x70) = (double)(float)((ulong)uVar3 >> 0x20);
            *(double *)((long)param_1 + lVar4 + 0x68) = (double)(float)uVar3;
            *(double *)((long)param_1 + lVar4 + 0x78) = (double)*pfVar5;
            pfVar5 = pfVar5 + 3;
          }
          uVar3 = FUN_00101778(param_1);
          if ((int)uVar3 != 0) {
                    /* WARNING: Could not inline here */
            FUN_00105b3c();
            uVar3 = 0xfffffffa;
          }
          goto LAB_0010544c;
        }
      }
      else if ((local_108 == 1) && (0x27 < param_3 && local_105 == '\x01')) {
        *param_1 = 1;
        *(double *)(param_1 + 8) = (double)local_104;
        *(double *)(param_1 + 10) = (double)fStack_100;
        *(double *)(param_1 + 0xc) = (double)local_fc;
        *(double *)(param_1 + 0xe) = (double)fStack_f8;
        *(double *)(param_1 + 0x10) = (double)local_f4;
        *(double *)(param_1 + 0x12) = (double)fStack_f0;
        *(double *)(param_1 + 2) = (double)local_ec;
        *(double *)(param_1 + 4) = (double)fStack_e8;
        *(double *)(param_1 + 6) = (double)local_e4;
        uVar3 = FUN_00101778(param_1);
        if ((int)uVar3 != 0) {
          memset(param_1,0,0x138);
          uVar3 = 0xfffffffb;
        }
        goto LAB_0010544c;
      }
      uVar3 = 0xfffffffc;
    }
    else {
      uVar3 = 0xfffffffd;
    }
  }
  else {
    uVar3 = 0xffffffff;
  }
LAB_0010544c:
  if (*(long *)(lVar1 + 0x28) != local_88) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

