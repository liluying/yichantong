/* Artifact: libexcavator.so | Address: 001055b8 | Ghidra static pseudocode; types require review. */

void FUN_001055b8(double *param_1,undefined8 *param_2,int param_3)

{
  long lVar1;
  undefined8 uVar2;
  double *pdVar3;
  long lVar4;
  long extraout_x8;
  long extraout_x8_00;
  undefined1 extraout_w12;
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
    uVar2 = 0xffffffff;
  }
  else {
    local_60 = CONCAT44((float)*param_1,0x1000081);
    pdVar3 = param_1 + 3;
    for (lVar4 = 0; lVar4 != 0x30; lVar4 = lVar4 + 0xc) {
      *(ulong *)((long)&uStack_58 + lVar4) = CONCAT44((float)pdVar3[-1],(float)pdVar3[-2]);
      *(float *)((long)&local_50 + lVar4) = (float)*pdVar3;
      pdVar3 = pdVar3 + 3;
    }
    param_2[1] = uStack_58;
    *param_2 = local_60;
    param_2[3] = uStack_48;
    param_2[2] = local_50;
    param_2[6] = local_30;
    param_2[5] = uStack_38;
    param_2[4] = local_40;
    FUN_001077b0(*(undefined1 *)param_2,(undefined1 *)((long)param_2 + 3),0x35);
    FUN_001061c8(3);
    lVar4 = extraout_x8;
    while (lVar4 != 0x38) {
      FUN_001061a0();
      *(undefined1 *)((long)param_2 + extraout_x8_00) = extraout_w12;
      lVar4 = extraout_x8_00 + 1;
    }
    uVar2 = 0x38;
  }
  if (*(long *)(lVar1 + 0x28) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

