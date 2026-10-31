/* Artifact: libexcavator.so | Address: 00103c64 | Ghidra static pseudocode; types require review. */

void FUN_00103c64(undefined8 param_1,undefined8 param_2,long param_3,uint param_4)

{
  int iVar1;
  undefined8 uVar2;
  ulong extraout_x1;
  long extraout_x8;
  ulong uVar3;
  long unaff_x23;
  undefined8 extraout_d0;
  double dVar4;
  undefined1 auStack_208 [48];
  undefined8 local_1d8;
  undefined8 local_1d0;
  undefined8 uStack_1c8;
  double local_1c0;
  undefined8 uStack_1b8;
  undefined8 local_118;
  undefined8 uStack_110;
  undefined8 local_108;
  long local_58;
  
  uVar2 = FUN_001061b4();
  local_58 = extraout_x8;
  if ((int)param_4 < 3) {
    local_1d8 = 0xbff0000000000000;
  }
  else {
    thunk_FUN_001063d4(auStack_208);
    for (uVar3 = (ulong)param_4; uVar3 != 0; uVar3 = uVar3 - 1) {
      iVar1 = FUN_00103d54(uVar2,param_3,&local_1d0);
      if (iVar1 != 0) {
        local_1d8 = 0xc000000000000000;
        goto LAB_00103d24;
      }
      dVar4 = local_1c0;
      FUN_00107478(local_1d0,uStack_1c8,local_1c0,uStack_1b8,local_118,uStack_110,local_108);
      FUN_001062d0(*(double *)(param_3 + 0x18) + dVar4,auStack_208);
      param_3 = param_3 + 0x98;
    }
    if ((extraout_x1 & 1) == 0) {
      FUN_00106328();
    }
    else {
      FUN_00106378(extraout_d0,auStack_208);
    }
  }
LAB_00103d24:
  if (*(long *)(unaff_x23 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(local_1d8);
}

