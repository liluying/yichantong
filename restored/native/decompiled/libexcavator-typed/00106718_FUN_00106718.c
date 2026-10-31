/* Artifact: libexcavator.so | Address: 00106718 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_00106928 */
/* WARNING: Inlined function: FUN_00106a28 */
/* WARNING: Inlined function: FUN_00106b10 */
/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00106718(double *param_1,uint param_2,double *param_3,double *param_4)

{
  long lVar1;
  double *pdVar2;
  double *pdVar3;
  undefined8 uVar4;
  double *pdVar5;
  long lVar6;
  long lVar7;
  ulong uVar8;
  int iVar9;
  long lVar10;
  int iVar11;
  long lVar12;
  int *piVar13;
  double *pdVar14;
  undefined8 *******pppppppuVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  double dVar20;
  undefined1 auStack_190 [8];
  int aiStack_188 [32];
  long lStack_108;
  undefined8 *******pppppppuStack_100;
  undefined8 uStack_f8;
  double local_f0 [4];
  double local_d0 [3];
  double *local_b8 [3];
  double local_a0;
  double dStack_98;
  double local_90;
  double local_88;
  undefined1 auStack_80 [8];
  double local_78;
  double dStack_70;
  double local_68;
  undefined1 auStack_60 [16];
  double local_50;
  double local_48;
  undefined8 local_38;
  
  dVar16 = DAT_00107838;
  pdVar3 = local_f0;
  lVar1 = tpidr_el0;
  pppppppuVar15 = (undefined8 *******)&stack0xfffffffffffffff0;
  local_38 = *(undefined8 *)(lVar1 + 0x28);
  if ((int)param_2 < 3) {
    uVar4 = 0xffffffff;
  }
  else {
    pdVar14 = &local_a0;
    for (lVar7 = 0; lVar7 != 3; lVar7 = lVar7 + 1) {
      for (lVar10 = 0; lVar10 != 0x20; lVar10 = lVar10 + 8) {
        *(undefined8 *)((long)pdVar14 + lVar10) = 0;
      }
      pdVar14 = pdVar14 + 4;
    }
    for (uVar8 = (ulong)param_2; uVar8 != 0; uVar8 = uVar8 - 1) {
      dVar18 = param_1[1];
      dVar17 = *param_1;
      dVar20 = dVar17 * dVar17;
      dVar19 = dVar18 * dVar18;
      local_90 = dVar17 + local_90;
      dStack_98 = dVar18 * dVar17 + dStack_98;
      local_a0 = dVar20 + local_a0;
      local_48 = local_48 - (dVar20 + dVar19);
      local_88 = local_88 - (dVar17 * dVar20 + dVar19 * dVar17);
      dStack_70 = dVar18 + dStack_70;
      local_78 = dVar19 + local_78;
      local_68 = local_68 - (dVar20 * dVar18 + dVar19 * dVar18);
      param_1 = param_1 + 3;
    }
    local_50 = (double)(int)param_2;
    pdVar14 = &local_a0;
    lVar7 = 0;
    while (lVar7 != 3) {
      lVar12 = 0x20;
      for (lVar10 = 1; lVar7 + lVar10 != 3; lVar10 = lVar10 + 1) {
        *(double *)((long)pdVar14 + lVar12) = pdVar14[lVar10];
        lVar12 = lVar12 + 0x20;
      }
      pdVar14 = pdVar14 + 5;
      lVar7 = lVar7 + 1;
    }
    local_b8[0] = &local_a0;
    local_b8[1] = (double *)auStack_80;
    local_b8[2] = (double *)auStack_60;
    iVar9 = 0;
    lVar10 = 4;
    for (lVar7 = 0; dVar17 = DAT_00107838, lVar7 < 4 && iVar9 < 2; lVar7 = lVar7 + 1) {
      pdVar14 = local_b8[iVar9];
      lVar12 = (long)iVar9 + 1;
      for (lVar6 = lVar12; lVar6 < 3; lVar6 = lVar6 + 1) {
        pdVar5 = local_b8[lVar6];
        if (ABS(pdVar14[lVar7]) < ABS(pdVar5[lVar7])) {
          local_b8[lVar6] = pdVar14;
          local_b8[iVar9] = pdVar5;
          pdVar14 = pdVar5;
        }
      }
      if (dVar16 <= ABS(pdVar14[lVar7])) {
        for (; lVar12 < 3; lVar12 = lVar12 + 1) {
          dVar17 = local_b8[lVar12][lVar7];
          if (dVar16 <= ABS(dVar17)) {
            dVar18 = pdVar14[lVar7];
            pdVar5 = pdVar14 + lVar7;
            pdVar2 = local_b8[lVar12] + lVar7;
            for (lVar6 = lVar10; lVar6 != 0; lVar6 = lVar6 + -1) {
              *pdVar2 = *pdVar2 - (dVar17 / dVar18) * *pdVar5;
              pdVar5 = pdVar5 + 1;
              pdVar2 = pdVar2 + 1;
            }
          }
        }
      }
      else {
        iVar9 = iVar9 + -1;
      }
      iVar9 = iVar9 + 1;
      lVar10 = lVar10 + -1;
    }
    lVar7 = 0;
    lVar10 = 4;
    for (iVar9 = 0; iVar9 < 3 && lVar7 < 4; iVar9 = iVar9 + 1) {
      pdVar14 = local_b8[iVar9];
      dVar16 = pdVar14[lVar7];
      if (dVar17 <= ABS(dVar16)) {
        pdVar5 = pdVar14 + lVar7;
        for (lVar12 = lVar10; lVar12 != 0; lVar12 = lVar12 + -1) {
          *pdVar5 = (1.0 / dVar16) * *pdVar5;
          pdVar5 = pdVar5 + 1;
        }
        for (lVar12 = 0; lVar12 < iVar9; lVar12 = lVar12 + 1) {
          pdVar5 = local_b8[lVar12];
          dVar16 = pdVar5[lVar7];
          if (dVar17 <= ABS(dVar16)) {
            dVar18 = pdVar14[lVar7];
            for (lVar6 = 0; lVar10 != lVar6; lVar6 = lVar6 + 1) {
              pdVar5[lVar7 + lVar6] =
                   pdVar5[lVar7 + lVar6] - (dVar16 / dVar18) * pdVar14[lVar7 + lVar6];
            }
          }
        }
      }
      else {
        iVar9 = iVar9 + -1;
      }
      lVar7 = lVar7 + 1;
      lVar10 = lVar10 + -1;
    }
    local_d0[1] = (double)_UNK_00107fe0;
    local_d0[0] = _DAT_00107fd8;
    local_d0[2] = (double)DAT_00107fe8;
    pppppppuStack_100 = pppppppuVar15;
    uStack_f8 = 0x1068b8;
    lVar10 = tpidr_el0;
    lStack_108 = *(long *)(lVar10 + 0x28);
    for (lVar7 = 0; lVar7 < 3; lVar7 = lVar7 + 1) {
      local_f0[lVar7] = 0.0;
    }
    for (lVar7 = 0; lVar7 != 0x80; lVar7 = lVar7 + 4) {
      *(undefined4 *)((long)aiStack_188 + lVar7) = 0xffffffff;
    }
    lVar7 = 0;
    iVar11 = 0;
    for (iVar9 = 0; iVar9 < 3 && lVar7 < 3; iVar9 = iVar9 + 1) {
      if (ABS(local_b8[iVar9][lVar7]) < DAT_00107838) {
        aiStack_188[lVar7] = iVar11;
        iVar11 = iVar11 + 1;
        iVar9 = iVar9 + -1;
      }
      lVar7 = lVar7 + 1;
    }
    for (; lVar7 < 3; lVar7 = lVar7 + 1) {
      aiStack_188[lVar7] = iVar11;
      iVar11 = iVar11 + 1;
    }
    lVar7 = 0;
    piVar13 = aiStack_188;
    for (iVar9 = 0; iVar9 < 3 && lVar7 < 4; iVar9 = iVar9 + 1) {
      pdVar14 = local_b8[iVar9];
      if (DAT_00107838 <= ABS(pdVar14[lVar7])) {
        for (lVar12 = 1; (int)lVar7 + (int)lVar12 < 3; lVar12 = lVar12 + 1) {
          if (-1 < piVar13[lVar12]) {
            local_f0[lVar7] = local_f0[lVar7] - local_d0[piVar13[lVar12]] * pdVar14[lVar7 + lVar12];
          }
        }
        local_f0[lVar7] = pdVar14[3] + local_f0[lVar7];
      }
      else {
        iVar9 = iVar9 + -1;
        local_f0[lVar7] = local_d0[aiStack_188[lVar7]];
      }
      lVar7 = lVar7 + 1;
      piVar13 = piVar13 + 1;
    }
    pppppppuVar15 = pppppppuStack_100;
    if (*(long *)(lVar10 + 0x28) != lStack_108) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
      pdVar3 = (double *)auStack_190;
      pppppppuVar15 = &pppppppuStack_100;
    }
    dVar17 = *pdVar3 * -0.5;
    dVar16 = pdVar3[1] * -0.5;
    dVar18 = (dVar17 * dVar17 + dVar16 * dVar16) - pdVar3[2];
    if (0.0 <= dVar18) {
      uVar4 = 0;
      *param_3 = dVar17;
      param_3[1] = dVar16;
      param_3[2] = 0.0;
      *param_4 = SQRT(dVar18);
    }
    else {
      uVar4 = 0xfffffffe;
    }
  }
  if (*(undefined8 *******)(lVar1 + 0x28) == pppppppuVar15[-5]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

