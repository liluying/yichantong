/* Artifact: libexcavator.so | Address: 0010528c | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001061b4 */
/* WARNING: Inlined function: FUN_00105e30 */
/* WARNING: Inlined function: FUN_00106154 */
/* WARNING: Inlined function: FUN_001060e0 */
/* WARNING: Inlined function: FUN_00105b3c */
/* WARNING: Inlined function: FUN_00105db0 */
/* WARNING: Inlined function: FUN_0010623c */
/* WARNING: Inlined function: FUN_00105aa4 */
/* WARNING: Inlined function: FUN_00105ecc */
/* WARNING: Inlined function: FUN_001060d8 */

void FUN_0010528c(undefined1 param_1 [16],undefined8 param_2,undefined8 param_3,undefined4 *param_4,
                 void *param_5,int param_6)

{
  long lVar1;
  ushort uVar2;
  undefined8 uVar3;
  long lVar4;
  float *pfVar5;
  uint uVar6;
  double dVar7;
  double dVar8;
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
  memset(param_4,0,0x138);
  if (param_6 - 4U < 0x7d) {
    memcpy(&local_108,param_5,(long)param_6);
    uVar6 = (uint)local_107 + (uint)local_108;
    for (lVar4 = 3; lVar4 < param_6; lVar4 = lVar4 + 1) {
      uVar6 = (uVar6 * 0x1c55) % 0x6a93;
      (&local_108)[lVar4] = (&local_108)[lVar4] ^ (byte)uVar6;
    }
    uVar2 = FUN_001077b0(local_108,(ulong)&local_108 | 3,param_6 + -3);
    if ((uint)local_107 == (uint)uVar2) {
      if (local_108 == 3) {
        if (0x5f < param_6 && local_105 == '\x01') {
          memcpy(auStack_170,&local_108,0x60);
                    /* WARNING: Could not inline here */
          uVar3 = FUN_00105db0(3);
          *(undefined8 *)(param_4 + 2) = uVar3;
          *(undefined8 *)(param_4 + 4) = param_2;
          *(undefined8 *)(param_4 + 6) = param_3;
          *(double *)(param_4 + 10) = (double)(float)((ulong)uStack_160 >> 0x20);
          *(double *)(param_4 + 8) = (double)(float)uStack_160;
          *(double *)(param_4 + 0xe) = (double)(float)((ulong)uStack_158 >> 0x20);
          *(double *)(param_4 + 0xc) = (double)(float)uStack_158;
          *(double *)(param_4 + 0x12) = (double)(float)((ulong)uStack_150 >> 0x20);
          *(double *)(param_4 + 0x10) = (double)(float)uStack_150;
          *(double *)(param_4 + 0x16) = (double)(float)((ulong)uStack_148 >> 0x20);
          *(double *)(param_4 + 0x14) = (double)(float)uStack_148;
          pfVar5 = &fStack_138;
          for (lVar4 = 0; lVar4 != 0x60; lVar4 = lVar4 + 0x18) {
            uVar3 = *(undefined8 *)(pfVar5 + -2);
            *(double *)((long)param_4 + lVar4 + 0x68) = (double)(float)((ulong)uVar3 >> 0x20);
            *(double *)((long)param_4 + lVar4 + 0x60) = (double)(float)uVar3;
            *(double *)((long)param_4 + lVar4 + 0x70) = (double)*pfVar5;
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
        if (99 < param_6 && local_105 == '\x01') {
          memcpy(auStack_170,&local_108,100);
          *param_4 = 2;
          dVar7 = (double)fStack_168;
          dVar8 = (double)fStack_164;
          uVar3 = FUN_00106e3c((double)fStack_16c);
          *(undefined8 *)(param_4 + 2) = uVar3;
          *(double *)(param_4 + 4) = dVar7;
          *(double *)(param_4 + 6) = dVar8;
          *(double *)(param_4 + 10) = (double)(float)((ulong)uStack_160 >> 0x20);
          *(double *)(param_4 + 8) = (double)(float)uStack_160;
          *(double *)(param_4 + 0xe) = (double)(float)((ulong)uStack_158 >> 0x20);
          *(double *)(param_4 + 0xc) = (double)(float)uStack_158;
          *(double *)(param_4 + 0x12) = (double)(float)((ulong)uStack_150 >> 0x20);
          *(double *)(param_4 + 0x10) = (double)(float)uStack_150;
          *(double *)(param_4 + 0x16) = (double)(float)((ulong)uStack_148 >> 0x20);
          *(double *)(param_4 + 0x14) = (double)(float)uStack_148;
          *(double *)(param_4 + 0x18) = (double)local_140;
          pfVar5 = afStack_134;
          for (lVar4 = 0; lVar4 != 0x60; lVar4 = lVar4 + 0x18) {
            uVar3 = *(undefined8 *)(pfVar5 + -2);
            *(double *)((long)param_4 + lVar4 + 0x70) = (double)(float)((ulong)uVar3 >> 0x20);
            *(double *)((long)param_4 + lVar4 + 0x68) = (double)(float)uVar3;
            *(double *)((long)param_4 + lVar4 + 0x78) = (double)*pfVar5;
            pfVar5 = pfVar5 + 3;
          }
          uVar3 = FUN_00101778(param_4);
          if ((int)uVar3 != 0) {
                    /* WARNING: Could not inline here */
            FUN_00105b3c();
            uVar3 = 0xfffffffa;
          }
          goto LAB_0010544c;
        }
      }
      else if ((local_108 == 1) && (0x27 < param_6 && local_105 == '\x01')) {
        dVar7 = (double)fStack_100;
        dVar8 = (double)local_fc;
        *param_4 = 1;
        uVar3 = FUN_00106e3c((double)local_104);
        *(undefined8 *)(param_4 + 8) = uVar3;
        *(double *)(param_4 + 10) = dVar7;
        *(double *)(param_4 + 0xc) = dVar8;
        dVar7 = (double)local_f4;
        dVar8 = (double)fStack_f0;
        uVar3 = FUN_00106e3c((double)fStack_f8);
        *(undefined8 *)(param_4 + 0xe) = uVar3;
        *(double *)(param_4 + 0x10) = dVar7;
        *(double *)(param_4 + 0x12) = dVar8;
        dVar7 = (double)fStack_e8;
        dVar8 = (double)local_e4;
        uVar3 = FUN_00106e3c((double)local_ec);
        *(undefined8 *)(param_4 + 2) = uVar3;
        *(double *)(param_4 + 4) = dVar7;
        *(double *)(param_4 + 6) = dVar8;
        uVar3 = FUN_00101778(param_4);
        if ((int)uVar3 != 0) {
          memset(param_4,0,0x138);
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

