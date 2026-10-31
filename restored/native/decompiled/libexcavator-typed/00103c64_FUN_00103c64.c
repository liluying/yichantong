/* Artifact: libexcavator.so | Address: 00103c64 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001061b4 */
/* WARNING: Inlined function: thunk_FUN_001063d4 */
/* WARNING: Inlined function: quat_rotate */
/* WARNING: Inlined function: FUN_001062d0 */
/* WARNING: Inlined function: FUN_00106328 */
/* WARNING: Inlined function: FUN_00106378 */

void FUN_00103c64(double param_1,undefined8 param_2,ulong param_3,long param_4,uint param_5)

{
  long lVar1;
  int iVar2;
  double *pdVar3;
  ulong uVar4;
  double dVar5;
  double dVar6;
  int iStack_208;
  double dStack_200;
  double dStack_1f8;
  double dStack_1f0;
  double dStack_1e8;
  double dStack_1e0;
  double local_1d8;
  double local_1d0;
  double dStack_1c8;
  double local_1c0;
  double dStack_1b8;
  double local_118;
  double dStack_110;
  double local_108;
  long local_58;
  
  lVar1 = tpidr_el0;
  local_58 = *(long *)(lVar1 + 0x28);
  if ((int)param_5 < 3) {
    dVar5 = -1.0;
  }
  else {
    local_1d8 = 0.0;
    dStack_1f0 = 0.0;
    dStack_1f8 = 0.0;
    dStack_1e0 = 0.0;
    dStack_1e8 = 0.0;
    dStack_200 = 0.0;
    iStack_208 = 0;
    for (uVar4 = (ulong)param_5; uVar4 != 0; uVar4 = uVar4 - 1) {
      iVar2 = FUN_00103d54(param_2,param_4,&local_1d0);
      if (iVar2 != 0) goto LAB_00103d10;
      dVar5 = dStack_1c8 + dStack_1c8;
      dVar5 = *(double *)(param_4 + 0x18) +
              local_118 * (dStack_1b8 * dVar5 - local_1d0 * (local_1c0 + local_1c0)) +
              dStack_110 * (local_1c0 * (dStack_1b8 + dStack_1b8) + local_1d0 * dVar5) +
              local_108 * ((1.0 - dStack_1c8 * dVar5) - local_1c0 * (local_1c0 + local_1c0));
      dStack_200 = dStack_200 + dVar5;
      dStack_1f8 = dStack_1f8 + dVar5 * dVar5;
      if (iStack_208 == 0) {
        pdVar3 = &dStack_1f0;
        dStack_1e8 = dVar5;
LAB_00106320:
        *pdVar3 = dVar5;
      }
      else {
        if (dVar5 < dStack_1f0) {
          dStack_1f0 = dVar5;
        }
        pdVar3 = &dStack_1e8;
        if (dStack_1e8 < dVar5) goto LAB_00106320;
      }
      param_4 = param_4 + 0x98;
      iStack_208 = iStack_208 + 1;
    }
    if ((param_3 & 1) == 0) {
      dVar5 = 0.0;
      dStack_1e0 = dStack_200;
      local_1d8 = dVar5;
      if (1 < iStack_208) {
        dStack_1e0 = dStack_200 / (double)iStack_208;
        dVar6 = (dStack_1f8 - dStack_1e0 * dStack_1e0 * (double)iStack_208) /
                (double)(iStack_208 + -1);
        dVar5 = SQRT(dVar6);
        local_1d8 = dVar5;
        if (dVar6 <= 0.0) {
          dVar5 = 0.0;
          local_1d8 = dVar5;
        }
      }
    }
    else {
      if (iStack_208 < 1) {
        dStack_1e0 = 0.0;
        local_1d8 = 0.0;
      }
      else {
        dVar5 = (double)iStack_208;
        dStack_1e0 = dStack_200 / dVar5;
        dVar5 = (dVar5 * param_1 * param_1 + dStack_1f8 + param_1 * -2.0 * dStack_200) / dVar5;
        local_1d8 = SQRT(dVar5);
        if (dVar5 <= 0.0) {
          local_1d8 = 0.0;
        }
      }
LAB_00103d10:
      dVar5 = -2.0;
    }
  }
  if (*(long *)(lVar1 + 0x28) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(dVar5);
  }
  return;
}

