/* Artifact: libexcavator.so | Address: 00104820 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_0010612c */
/* WARNING: Inlined function: FUN_001063e8 */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Removing unreachable block (ram,0x001048e0) */
/* WARNING: Removing unreachable block (ram,0x001048dc) */
/* WARNING: Removing unreachable block (ram,0x0010491c) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00104820(int *param_1,long param_2)

{
  double *pdVar1;
  int *piVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  double dVar5;
  undefined8 uVar6;
  int iVar7;
  int iVar8;
  long lVar9;
  double *pdVar10;
  double *pdVar11;
  int iVar12;
  int iVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  int **local_218;
  undefined8 *puStack_210;
  undefined8 local_208;
  code *local_200;
  code *UNRECOVERED_JUMPTABLE;
  undefined8 local_1f0;
  undefined8 local_1e8;
  undefined8 uStack_1e0;
  undefined8 local_1d8;
  int *local_1d0;
  undefined1 *puStack_1c8;
  long local_1c0;
  undefined1 auStack_1b8 [312];
  long local_80;
  
  uVar4 = _UNK_001078c8;
  uVar3 = _DAT_001078c0;
  uVar6 = DAT_00107848;
  lVar9 = tpidr_el0;
  local_80 = *(long *)(lVar9 + 0x28);
  if (*param_1 == 2) {
    if (*(int *)(param_2 + 0x90) != 0) {
      memcpy(auStack_1b8,param_1,0x138);
      dVar5 = DAT_00107fd0;
      puStack_1c8 = auStack_1b8;
      local_1d8 = 0;
      local_208 = uVar6;
      local_1f0 = 0x800000008;
      uStack_1e0 = uVar4;
      local_1e8 = uVar3;
      local_200 = (code *)&DAT_0010496c;
      UNRECOVERED_JUMPTABLE = (code *)&LAB_001049c4;
      local_218 = &local_1d0;
      puStack_210 = &local_1f0;
      local_1d0 = param_1;
      local_1c0 = param_2;
      for (iVar8 = 0; iVar8 < local_208._4_4_; iVar8 = iVar8 + 1) {
        for (lVar9 = 0; lVar9 < (int)local_208; lVar9 = lVar9 + 1) {
          piVar2 = (int *)(puStack_210 + lVar9 * 4);
          iVar7 = piVar2[1];
          if (iVar7 != 0) {
            pdVar10 = (double *)(piVar2 + 2);
            dVar16 = *pdVar10;
            pdVar11 = (double *)(piVar2 + 4);
            dVar14 = *pdVar11;
            pdVar1 = (double *)(piVar2 + 6);
            for (iVar12 = 0; iVar12 < *piVar2; iVar12 = iVar12 + 1) {
              dVar14 = (dVar14 - dVar16) / (double)iVar7;
              dVar17 = dVar16;
              dVar18 = dVar5;
              for (iVar13 = 0; iVar13 <= iVar7; iVar13 = iVar13 + 1) {
                *pdVar1 = dVar16 + dVar14 * (double)iVar13;
                (*UNRECOVERED_JUMPTABLE)(&local_218);
                dVar15 = (double)(*local_200)(&local_218);
                if (dVar15 < dVar18) {
                  dVar17 = *pdVar1;
                  dVar18 = dVar15;
                }
                iVar7 = piVar2[1];
              }
              dVar16 = dVar17 - dVar14;
              dVar14 = dVar14 + dVar17;
            }
            dVar14 = (dVar16 + dVar14) * 0.5;
            *pdVar1 = dVar14;
            dVar16 = (*pdVar11 - *pdVar10) * 0.25;
            *pdVar10 = dVar14 - dVar16;
            *pdVar11 = dVar14 + dVar16;
          }
        }
      }
                    /* WARNING: Could not recover jumptable at 0x00106560. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*UNRECOVERED_JUMPTABLE)(&local_218);
      return;
    }
    uVar6 = 0xfffffffe;
  }
  else {
    uVar6 = 0xffffffff;
  }
  if (*(long *)(lVar9 + 0x28) != local_80) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}

