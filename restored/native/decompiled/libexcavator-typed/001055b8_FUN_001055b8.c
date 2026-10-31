/* Artifact: libexcavator.so | Address: 001055b8 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: crc16_update */
/* WARNING: Inlined function: FUN_001061c8 */
/* WARNING: Inlined function: FUN_001061a0 */

void FUN_001055b8(double *param_1,byte *param_2,int param_3)

{
  long lVar1;
  uint uVar2;
  undefined8 uVar3;
  double *pdVar4;
  byte *pbVar5;
  int iVar6;
  long lVar7;
  undefined8 local_60;
  undefined8 uStack_58;
  undefined8 local_50;
  undefined8 uStack_48;
  undefined8 local_40;
  undefined8 uStack_38;
  undefined8 local_30;
  long local_28;
  
  lVar1 = tpidr_el0;
  local_28 = *(long *)(lVar1 + 0x28);
  local_30 = 0;
  uStack_48 = 0;
  local_50 = 0;
  uStack_38 = 0;
  local_40 = 0;
  uStack_58 = 0;
  if (param_3 < 0x38) {
    uVar3 = 0xffffffff;
  }
  else {
    local_60 = CONCAT44((float)*param_1,0x1000081);
    pdVar4 = param_1 + 3;
    for (lVar7 = 0; lVar7 != 0x30; lVar7 = lVar7 + 0xc) {
      *(ulong *)((long)&uStack_58 + lVar7) = CONCAT44((float)pdVar4[-1],(float)pdVar4[-2]);
      *(float *)((long)&local_50 + lVar7) = (float)*pdVar4;
      pdVar4 = pdVar4 + 3;
    }
    *(undefined8 *)(param_2 + 8) = uStack_58;
    *(undefined8 *)param_2 = local_60;
    *(undefined8 *)(param_2 + 0x18) = uStack_48;
    *(undefined8 *)(param_2 + 0x10) = local_50;
    uVar2 = (uint)*param_2;
    iVar6 = 0x35;
    *(undefined8 *)(param_2 + 0x30) = local_30;
    *(undefined8 *)(param_2 + 0x28) = uStack_38;
    *(undefined8 *)(param_2 + 0x20) = local_40;
    pbVar5 = param_2 + 3;
    do {
      iVar6 = iVar6 + -1;
      uVar2 = (uint)*(ushort *)
                     (&DAT_00108028 + (ulong)((uint)(*pbVar5 >> 4) ^ (uVar2 & 0xf000) >> 0xc) * 2) ^
              uVar2 << 4;
      uVar2 = (uint)*(ushort *)
                     (&DAT_00108028 + (ulong)(*pbVar5 & 0xf ^ (uVar2 & 0xf000) >> 0xc) * 2) ^
              uVar2 << 4;
      pbVar5 = pbVar5 + 1;
    } while (iVar6 != 0);
    *(short *)(param_2 + 1) = (short)uVar2;
    uVar2 = (uint)*param_2 + (uVar2 & 0xffff);
    for (lVar7 = 3; lVar7 != 0x38; lVar7 = lVar7 + 1) {
      uVar2 = (uVar2 * 0x1c55) % 0x6a93;
      param_2[lVar7] = param_2[lVar7] ^ (byte)uVar2;
    }
    uVar3 = 0x38;
  }
  if (*(long *)(lVar1 + 0x28) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

