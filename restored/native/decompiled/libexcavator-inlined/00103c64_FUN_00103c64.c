/* Artifact: libexcavator.so | Address: 00103c64 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001061b4 */
/* WARNING: Inlined function: thunk_FUN_001063d4 */

void FUN_00103c64(undefined8 param_1,undefined8 param_2,ulong param_3,long param_4,uint param_5)

{
  long lVar1;
  int iVar2;
  ulong uVar3;
  undefined8 uVar4;
  double dVar5;
  undefined8 uStack_208;
  undefined8 uStack_200;
  undefined8 uStack_1f8;
  undefined8 uStack_1f0;
  undefined8 uStack_1e8;
  undefined8 uStack_1e0;
  undefined8 local_1d8;
  undefined8 local_1d0;
  undefined8 uStack_1c8;
  double local_1c0;
  undefined8 uStack_1b8;
  undefined8 local_118;
  undefined8 uStack_110;
  undefined8 local_108;
  long local_58;
  
  lVar1 = tpidr_el0;
  local_58 = *(long *)(lVar1 + 0x28);
  if ((int)param_5 < 3) {
    uVar4 = 0xbff0000000000000;
  }
  else {
    local_1d8 = 0;
    uStack_1f0 = 0;
    uStack_1f8 = 0;
    uStack_1e0 = 0;
    uStack_1e8 = 0;
    uStack_200 = 0;
    uStack_208 = 0;
    for (uVar3 = (ulong)param_5; uVar3 != 0; uVar3 = uVar3 - 1) {
      iVar2 = FUN_00103d54(param_2,param_4,&local_1d0);
      if (iVar2 != 0) {
        uVar4 = 0xc000000000000000;
        goto LAB_00103d24;
      }
      dVar5 = local_1c0;
      FUN_00107478(local_1d0,uStack_1c8,local_1c0,uStack_1b8,local_118,uStack_110,local_108);
      FUN_001062d0(*(double *)(param_4 + 0x18) + dVar5,&uStack_208);
      param_4 = param_4 + 0x98;
    }
    if ((param_3 & 1) == 0) {
      FUN_00106328();
      uVar4 = local_1d8;
    }
    else {
      FUN_00106378(param_1,&uStack_208);
      uVar4 = local_1d8;
    }
  }
LAB_00103d24:
  if (*(long *)(lVar1 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

