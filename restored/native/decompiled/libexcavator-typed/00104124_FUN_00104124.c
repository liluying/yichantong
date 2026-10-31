/* Artifact: libexcavator.so | Address: 00104124 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001061b4 */
/* WARNING: Inlined function: FUN_00106110 */
/* WARNING: Inlined function: FUN_0010612c */
/* WARNING: Inlined function: FUN_001063e8 */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00104124(undefined8 param_1,int *param_2,uint param_3,undefined8 param_4,int param_5)

{
  double *pdVar1;
  double dVar2;
  undefined8 uVar3;
  int iVar4;
  long lVar5;
  int iVar6;
  long lVar7;
  int *piVar8;
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
  int **local_298;
  undefined4 *puStack_290;
  undefined8 local_288;
  code *local_280;
  code *local_278;
  int *local_270;
  undefined1 *puStack_268;
  uint local_260;
  int iStack_25c;
  undefined8 local_258;
  undefined8 local_250;
  int local_248;
  undefined4 local_240 [2];
  undefined8 local_238;
  undefined8 uStack_230;
  undefined4 local_21c;
  undefined8 local_218;
  undefined8 uStack_210;
  undefined4 local_1fc;
  undefined8 local_1f8;
  undefined8 uStack_1f0;
  undefined4 local_1dc;
  undefined8 local_1d8;
  undefined8 uStack_1d0;
  undefined4 local_1bc;
  undefined8 local_1b8;
  undefined8 uStack_1b0;
  undefined1 auStack_1a0 [312];
  long local_68;
  
  lVar9 = tpidr_el0;
  local_68 = *(long *)(lVar9 + 0x28);
  if (0xd < param_5 - 3U) {
    uVar3 = 0xffffffff;
LAB_00104370:
    if (*(long *)(lVar9 + 0x28) != local_68) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar3);
    }
    return;
  }
  memcpy(auStack_1a0,param_2,0x138);
  local_270 = param_2;
  puStack_268 = auStack_1a0;
  local_260 = param_3;
  local_258 = param_1;
  local_250 = param_4;
  local_248 = param_5;
  memset(local_240,0,0xa0);
  dVar2 = DAT_00107fd0;
  local_298 = &local_270;
  local_280 = (code *)&LAB_001043a0;
  local_278 = (code *)0x0;
  local_288 = DAT_00107840;
  for (lVar5 = 0; lVar5 != 0xa0; lVar5 = lVar5 + 0x20) {
    *(undefined4 *)((long)local_240 + lVar5) = 8;
  }
  iVar4 = *param_2;
  if (iVar4 == 1) {
    local_278 = FUN_001043bc;
    if ((param_3 >> 1 & 1) != 0) {
      local_240[1] = 8;
      uStack_230 = _UNK_001078c8;
      local_238 = _DAT_001078c0;
      uStack_210 = _UNK_001078a8;
      local_218 = _DAT_001078a0;
      local_21c = 8;
    }
  }
  else {
    if (iVar4 == 2) {
      local_278 = (code *)&LAB_00104484;
      if ((param_3 >> 1 & 1) != 0) {
        local_240[1] = 8;
        uStack_230 = _UNK_001078c8;
        local_238 = _DAT_001078c0;
      }
      if ((param_3 >> 2 & 1) != 0) {
        uStack_210 = _UNK_001078c8;
        local_218 = _DAT_001078c0;
        local_21c = 8;
      }
    }
    else {
      if (iVar4 != 3) goto LAB_00104308;
      local_278 = (code *)&LAB_00104548;
      if ((param_3 >> 1 & 1) != 0) {
        local_240[1] = 8;
        uStack_230 = _UNK_001078c8;
        local_238 = _DAT_001078c0;
      }
    }
    if ((param_3 >> 3 & 1) == 0) {
      if ((param_3 >> 4 & 1) == 0) {
        if ((param_3 >> 5 & 1) != 0) {
          uStack_1b0 = _UNK_00107898;
          local_1b8 = _DAT_00107890;
          local_1bc = 8;
        }
      }
      else {
        uStack_1f0 = _UNK_001078c8;
        local_1f8 = _DAT_001078c0;
        local_1fc = 8;
      }
    }
    else {
      uStack_1f0 = _UNK_00107898;
      local_1f8 = _DAT_00107890;
      local_1fc = 8;
      uStack_1d0 = _UNK_00107898;
      local_1d8 = _DAT_00107890;
      local_1dc = 8;
    }
  }
LAB_00104308:
  iVar4 = 0;
  iVar6 = 5;
  lVar5 = 5;
  do {
    lVar7 = -lVar5;
    piVar8 = &iStack_25c + lVar5 * 8;
    do {
      lVar7 = lVar7 + 1;
      if (lVar7 == 1) {
        puStack_290 = local_240;
        if (iVar4 != 0) {
          for (iVar4 = 0; iVar4 < local_288._4_4_; iVar4 = iVar4 + 1) {
            for (lVar9 = 0; lVar9 < (int)local_288; lVar9 = lVar9 + 1) {
              piVar8 = puStack_290 + lVar9 * 8;
              iVar6 = piVar8[1];
              if (iVar6 != 0) {
                pdVar10 = (double *)(piVar8 + 2);
                dVar16 = *pdVar10;
                pdVar11 = (double *)(piVar8 + 4);
                dVar14 = *pdVar11;
                pdVar1 = (double *)(piVar8 + 6);
                for (iVar12 = 0; iVar12 < *piVar8; iVar12 = iVar12 + 1) {
                  dVar14 = (dVar14 - dVar16) / (double)iVar6;
                  dVar17 = dVar16;
                  dVar18 = dVar2;
                  for (iVar13 = 0; iVar13 <= iVar6; iVar13 = iVar13 + 1) {
                    *pdVar1 = dVar16 + dVar14 * (double)iVar13;
                    (*local_278)(&local_298);
                    dVar15 = (double)(*local_280)(&local_298);
                    if (dVar15 < dVar18) {
                      dVar17 = *pdVar1;
                      dVar18 = dVar15;
                    }
                    iVar6 = piVar8[1];
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
          (*local_278)(&local_298);
          return;
        }
        uVar3 = 0xfffffffe;
        goto LAB_00104370;
      }
      if (*piVar8 != 0) {
        iVar4 = iVar4 + 1;
      }
      piVar8 = piVar8 + -8;
    } while (iVar4 != 0);
    iVar6 = iVar6 + -1;
    local_288 = CONCAT44(local_288._4_4_,iVar6);
    lVar5 = -lVar7;
  } while( true );
}

