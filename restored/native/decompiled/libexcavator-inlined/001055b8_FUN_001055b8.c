/* Artifact: libexcavator.so | Address: 001055b8 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001061c8 */
/* WARNING: Inlined function: FUN_001061a0 */

void FUN_001055b8(double *param_1,byte *param_2,int param_3)

{
  long lVar1;
  ushort uVar2;
  undefined8 uVar3;
  double *pdVar4;
  long lVar5;
  uint uVar6;
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
    for (lVar5 = 0; lVar5 != 0x30; lVar5 = lVar5 + 0xc) {
      *(ulong *)((long)&uStack_58 + lVar5) = CONCAT44((float)pdVar4[-1],(float)pdVar4[-2]);
      *(float *)((long)&local_50 + lVar5) = (float)*pdVar4;
      pdVar4 = pdVar4 + 3;
    }
    *(undefined8 *)(param_2 + 8) = uStack_58;
    *(undefined8 *)param_2 = local_60;
    *(undefined8 *)(param_2 + 0x18) = uStack_48;
    *(undefined8 *)(param_2 + 0x10) = local_50;
    *(undefined8 *)(param_2 + 0x30) = local_30;
    *(undefined8 *)(param_2 + 0x28) = uStack_38;
    *(undefined8 *)(param_2 + 0x20) = local_40;
    uVar2 = FUN_001077b0(*param_2,param_2 + 3,0x35);
    *(ushort *)(param_2 + 1) = uVar2;
    uVar6 = (uint)*param_2 + (uint)uVar2;
    for (lVar5 = 3; lVar5 != 0x38; lVar5 = lVar5 + 1) {
      uVar6 = (uVar6 * 0x1c55) % 0x6a93;
      param_2[lVar5] = param_2[lVar5] ^ (byte)uVar6;
    }
    uVar3 = 0x38;
  }
  if (*(long *)(lVar1 + 0x28) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

