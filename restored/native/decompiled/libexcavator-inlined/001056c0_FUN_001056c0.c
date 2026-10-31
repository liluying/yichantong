/* Artifact: libexcavator.so | Address: 001056c0 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106180 */
/* WARNING: Inlined function: FUN_00105f14 */
/* WARNING: Inlined function: FUN_00105e30 */
/* WARNING: Inlined function: FUN_00106154 */
/* WARNING: Inlined function: FUN_00105ecc */

void FUN_001056c0(double *param_1,void *param_2,int param_3)

{
  long lVar1;
  ushort uVar2;
  undefined8 uVar3;
  long lVar4;
  float *pfVar5;
  uint uVar6;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  byte local_c8;
  ushort uStack_c7;
  byte bStack_c5;
  float fStack_c4;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  param_1[0xc] = 0.0;
  param_1[9] = 0.0;
  param_1[8] = 0.0;
  param_1[0xb] = 0.0;
  param_1[10] = 0.0;
  param_1[5] = 0.0;
  param_1[4] = 0.0;
  param_1[7] = 0.0;
  param_1[6] = 0.0;
  param_1[1] = 0.0;
  *param_1 = 0.0;
  param_1[3] = 0.0;
  param_1[2] = 0.0;
  if (param_3 - 4U < 0x7d) {
    memcpy(&local_c8,param_2,(long)param_3);
    uVar6 = (uint)uStack_c7 + (uint)local_c8;
    for (lVar4 = 3; lVar4 < param_3; lVar4 = lVar4 + 1) {
      uVar6 = (uVar6 * 0x1c55) % 0x6a93;
      (&local_c8)[lVar4] = (&local_c8)[lVar4] ^ (byte)uVar6;
    }
    uVar2 = FUN_001077b0(local_c8,(ulong)&local_c8 | 3,param_3 + -3);
    if ((uint)uStack_c7 == (uint)uVar2) {
      if ((local_c8 == 0x81) && (0x37 < param_3 && bStack_c5 == '\x01')) {
        uStack_e8 = uStack_b0;
        uStack_f0 = local_b8;
        local_d0 = local_98;
        uStack_d8 = uStack_a0;
        local_e0 = local_a8;
        *param_1 = (double)fStack_c4;
        pfVar5 = (float *)&uStack_f0;
        for (lVar4 = 0; lVar4 != 0x60; lVar4 = lVar4 + 0x18) {
          uVar3 = *(undefined8 *)(pfVar5 + -2);
          *(double *)((long)param_1 + lVar4 + 0x10) = (double)(float)((ulong)uVar3 >> 0x20);
          *(double *)((long)param_1 + lVar4 + 8) = (double)(float)uVar3;
          *(double *)((long)param_1 + lVar4 + 0x18) = (double)*pfVar5;
          pfVar5 = pfVar5 + 3;
        }
        uVar3 = 0;
      }
      else {
        uVar3 = 0xfffffffc;
      }
    }
    else {
      uVar3 = 0xfffffffd;
    }
  }
  else {
    uVar3 = 0xffffffff;
  }
  if (*(long *)(lVar1 + 0x28) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

