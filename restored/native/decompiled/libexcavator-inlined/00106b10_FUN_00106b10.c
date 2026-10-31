/* Artifact: libexcavator.so | Address: 00106b10 | Ghidra static pseudocode; types require review. */

void FUN_00106b10(long param_1,int param_2,int param_3,long param_4,long param_5)

{
  long lVar1;
  double dVar2;
  long lVar3;
  long lVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  long lVar8;
  long lVar9;
  int local_98 [32];
  long local_18;
  
  lVar1 = tpidr_el0;
  local_18 = *(long *)(lVar1 + 0x28);
  lVar3 = (long)(param_3 + -1);
  for (lVar4 = 0; dVar2 = DAT_00107838, lVar4 < lVar3; lVar4 = lVar4 + 1) {
    *(undefined8 *)(param_5 + lVar4 * 8) = 0;
  }
  for (lVar4 = 0; lVar4 != 0x80; lVar4 = lVar4 + 4) {
    *(undefined4 *)((long)local_98 + lVar4) = 0xffffffff;
  }
  lVar4 = 0;
  iVar5 = 0;
  for (iVar6 = 0; iVar6 < param_2 && lVar4 < lVar3; iVar6 = iVar6 + 1) {
    if (ABS(*(double *)(*(long *)(param_1 + (long)iVar6 * 8) + lVar4 * 8)) < DAT_00107838) {
      local_98[lVar4] = iVar5;
      iVar5 = iVar5 + 1;
      iVar6 = iVar6 + -1;
    }
    lVar4 = lVar4 + 1;
  }
  for (; lVar4 < lVar3; lVar4 = lVar4 + 1) {
    local_98[lVar4] = iVar5;
    iVar5 = iVar5 + 1;
  }
  lVar4 = 0;
  piVar7 = local_98;
  for (iVar6 = 0; iVar6 < param_2 && lVar4 < param_3; iVar6 = iVar6 + 1) {
    lVar8 = *(long *)(param_1 + (long)iVar6 * 8);
    if (dVar2 <= ABS(*(double *)(lVar8 + lVar4 * 8))) {
      for (lVar9 = 1; (int)lVar4 + (int)lVar9 < param_3 + -1; lVar9 = lVar9 + 1) {
        if (-1 < piVar7[lVar9]) {
          *(double *)(param_5 + lVar4 * 8) =
               *(double *)(param_5 + lVar4 * 8) -
               *(double *)(param_4 + (long)piVar7[lVar9] * 8) *
               *(double *)(lVar8 + lVar4 * 8 + lVar9 * 8);
        }
      }
      *(double *)(param_5 + lVar4 * 8) =
           *(double *)(lVar8 + lVar3 * 8) + *(double *)(param_5 + lVar4 * 8);
    }
    else {
      iVar6 = iVar6 + -1;
      *(undefined8 *)(param_5 + lVar4 * 8) = *(undefined8 *)(param_4 + (long)local_98[lVar4] * 8);
    }
    lVar4 = lVar4 + 1;
    piVar7 = piVar7 + 1;
  }
  if (*(long *)(lVar1 + 0x28) != local_18) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

