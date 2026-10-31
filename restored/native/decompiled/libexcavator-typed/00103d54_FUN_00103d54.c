/* Artifact: libexcavator.so | Address: 00103d54 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106180 */
/* WARNING: Inlined function: FUN_00106204 */
/* WARNING: Inlined function: quat_is_valid */
/* WARNING: Inlined function: quat_multiply */
/* WARNING: Inlined function: FUN_00106fe8 */
/* WARNING: Inlined function: FUN_00105a04 */
/* WARNING: Inlined function: FUN_00105a3c */
/* WARNING: Inlined function: FUN_00106224 */
/* WARNING: Inlined function: FUN_00105d20 */
/* WARNING: Inlined function: FUN_00105b70 */
/* WARNING: Inlined function: FUN_00106054 */
/* WARNING: Inlined function: FUN_00106090 */
/* WARNING: Inlined function: FUN_00106c98 */
/* WARNING: Inlined function: FUN_0010611c */
/* WARNING: Inlined function: FUN_00106ce8 */
/* WARNING: Inlined function: FUN_00105b4c */
/* WARNING: Inlined function: FUN_00105e18 */
/* WARNING: Inlined function: FUN_001060a0 */
/* WARNING: Inlined function: FUN_00105dcc */
/* WARNING: Inlined function: FUN_00105a48 */
/* WARNING: Inlined function: FUN_00106160 */
/* WARNING: Inlined function: FUN_00106dcc */
/* WARNING: Inlined function: FUN_00105fc8 */
/* WARNING: Inlined function: FUN_00105e94 */
/* WARNING: Inlined function: FUN_00105cb0 */
/* WARNING: Inlined function: FUN_00105b14 */
/* WARNING: Inlined function: FUN_00106044 */
/* WARNING: Inlined function: FUN_001060f0 */
/* WARNING: Inlined function: FUN_00106100 */
/* WARNING: Inlined function: FUN_00105d04 */
/* WARNING: Inlined function: FUN_00105938 */
/* WARNING: Inlined function: FUN_00105adc */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00103d54(int *param_1,double *param_2,double *param_3)

{
  undefined8 *puVar1;
  long lVar2;
  double *pdVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  bool bVar8;
  bool bVar9;
  int iVar10;
  double *pdVar11;
  undefined8 uVar12;
  long lVar13;
  double *pdVar14;
  long lVar15;
  undefined1 *puVar16;
  undefined8 uVar17;
  double dVar18;
  double dVar19;
  double dVar20;
  double dVar21;
  double dVar22;
  double dVar23;
  double dVar24;
  double dVar25;
  double dVar26;
  double dVar27;
  double dVar28;
  double dVar29;
  double dVar30;
  double unaff_d15;
  Quat QVar31;
  Point a;
  Point b;
  double adStack_220 [2];
  double *pdStack_210;
  double dStack_208;
  undefined1 *puStack_200;
  double dStack_1f8;
  double local_1e8;
  double local_1e0;
  double dStack_1d8;
  double dStack_1d0;
  double dStack_1c8;
  double dStack_1c0;
  double dStack_1b8;
  double dStack_1b0;
  double dStack_1a8;
  double dStack_1a0;
  double dStack_198;
  double dStack_190;
  double dStack_188;
  double dStack_180;
  double dStack_178;
  double dStack_170;
  double dStack_168;
  double dStack_160;
  double dStack_158;
  double dStack_150;
  double adStack_148 [13];
  double adStack_e0 [3];
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  double dStack_b0;
  undefined8 uStack_a8;
  double dStack_a0;
  undefined8 local_98;
  
  lVar2 = tpidr_el0;
  local_98 = *(undefined8 *)(lVar2 + 0x28);
  puVar16 = &stack0xfffffffffffffff0;
  memset(param_3,0,0x178);
  dVar18 = param_2[7];
  dVar20 = param_2[8];
  dVar19 = param_2[9];
  dVar22 = param_2[10];
  bVar4 = false;
  bVar6 = true;
  bVar8 = false;
  if (dVar22 < 2.0) {
    bVar4 = false;
    bVar6 = false;
    bVar8 = true;
    if (!NAN(dVar22)) {
      bVar4 = dVar22 < -2.0;
      bVar6 = dVar22 == -2.0;
      bVar8 = false;
    }
  }
  bVar5 = false;
  if ((!bVar6 && bVar4 == bVar8) && (bVar5 = false, !NAN(dVar19))) {
    bVar5 = dVar19 < 2.0;
  }
  bVar4 = false;
  bVar6 = true;
  bVar8 = false;
  if (bVar5) {
    bVar4 = false;
    bVar6 = false;
    bVar8 = true;
    if (!NAN(dVar19)) {
      bVar4 = dVar19 < -2.0;
      bVar6 = dVar19 == -2.0;
      bVar8 = false;
    }
  }
  bVar5 = false;
  if ((!bVar6 && bVar4 == bVar8) && (bVar5 = false, !NAN(dVar20))) {
    bVar5 = dVar20 < 2.0;
  }
  bVar4 = false;
  bVar6 = true;
  bVar8 = false;
  if (bVar5) {
    bVar4 = false;
    bVar6 = false;
    bVar8 = true;
    if (!NAN(dVar20)) {
      bVar4 = dVar20 < -2.0;
      bVar6 = dVar20 == -2.0;
      bVar8 = false;
    }
  }
  bVar5 = false;
  bVar7 = true;
  bVar9 = false;
  if (!bVar6 && bVar4 == bVar8) {
    bVar5 = false;
    bVar7 = false;
    bVar9 = true;
    if (!NAN(dVar18)) {
      bVar5 = dVar18 < -2.0;
      bVar7 = dVar18 == -2.0;
      bVar9 = false;
    }
  }
  bVar4 = false;
  if ((!bVar7 && bVar5 == bVar9) && (bVar4 = false, !NAN(dVar18))) {
    bVar4 = dVar18 < 2.0;
  }
  if (bVar4) {
    dVar18 = dVar22 * dVar22 + dVar19 * dVar19 + dVar18 * dVar18 + dVar20 * dVar20;
    bVar4 = 0.5 < dVar18 && dVar18 < 2.0;
  }
  else {
    bVar4 = false;
  }
  if (bVar4) {
                    /* WARNING: Could not inline here */
    if ((*(int *)(param_2 + 0x12) == 0) ||
       (iVar10 = quat_is_valid(*(Quat *)(param_2 + 0xe)), iVar10 != 0)) {
      iVar10 = *param_1;
      if (iVar10 == 3) {
                    /* WARNING: Could not inline here */
        QVar31 = quat_multiply(*(Quat *)(param_2 + 7),*(Quat *)(param_1 + 0x46));
        *param_3 = QVar31.w;
        param_3[1] = QVar31.x;
        param_3[2] = QVar31.y;
        param_3[3] = QVar31.z;
        dVar21 = *param_2;
        dVar19 = *(double *)(param_1 + 0x38);
        dStack_190 = (double)FUN_00105928(*(undefined8 *)(param_1 + 0x36),dVar19,dVar21,
                                          *(undefined8 *)(param_1 + 0x3c),0,0,
                                          *(undefined8 *)(param_1 + 0x3a));
        dVar18 = dStack_190 + 0.0;
        dVar23 = dVar19 + *(double *)(param_1 + 10);
        dVar26 = dVar21 + *(double *)(param_1 + 8);
        dVar25 = *(double *)(param_1 + 0x34);
        dVar20 = dVar18 + *(double *)(param_1 + 0x30);
        dVar22 = dVar23 + *(double *)(param_1 + 0x32);
        dStack_1a0 = dVar21;
        dStack_198 = dVar19;
                    /* WARNING: Could not inline here */
        FUN_00106c98(*(undefined8 *)(param_1 + 0x14),adStack_e0);
        dVar19 = 0.0;
        dVar21 = 0.0;
                    /* WARNING: Could not inline here */
        dStack_1c0 = (double)FUN_00106ce8(*(undefined8 *)(param_1 + 0xe),adStack_e0);
        dStack_1c0 = dVar20 + dStack_1c0;
        dStack_1c8 = dVar22 + dVar19;
        dStack_1d0 = dVar26 + dVar25 + dVar21;
        dStack_1b8 = dVar26 + dVar25;
        dStack_1b0 = dVar22;
        dStack_1a8 = dVar20;
                    /* WARNING: Could not inline here */
        dVar19 = (double)FUN_001060a0(dStack_1c0 - dVar18,dStack_1c8 - dVar23,dStack_1d0 - dVar26);
        dVar27 = 1.0 / dVar19;
        local_1e8 = dVar22 * dVar27;
        dStack_1d8 = -(unaff_d15 * dVar27);
        local_1e0 = 0.0;
        dVar22 = *(double *)(param_1 + 0xc);
        dVar25 = *(double *)(param_1 + 0x16);
                    /* WARNING: Could not inline here */
        dVar21 = (double)FUN_00106dcc();
        dVar30 = (((dVar25 * dVar25 + dVar19 * dVar19) - dVar22 * dVar22) /
                 ((dVar25 + dVar25) * dVar19)) * *(double *)(param_1 + 0x16);
        dVar25 = local_1e8 * dVar30;
        dVar21 = dVar21 * *(double *)(param_1 + 0x16);
        dVar24 = local_1e0 * dVar21;
        dVar19 = dVar20 * dVar27 * dVar30 + dStack_1d8 * dVar21;
        dVar22 = dVar18 + dVar19;
        dStack_1d8 = dVar26 + unaff_d15 * dVar27 * dVar30 + dVar20 * dVar27 * dVar21;
        dVar21 = 0.0;
        dVar27 = 0.0;
                    /* WARNING: Could not inline here */
        dVar20 = (double)FUN_001060f0(0x3ff0000000000000);
        param_3[4] = dVar20;
        param_3[5] = dVar21;
        param_3[6] = dVar27;
        param_3[7] = dVar19;
        dVar30 = dVar21 + dVar21;
        dVar29 = dVar27 + dVar27;
        dVar28 = dVar19 + dVar19;
        dStack_170 = dVar21 * dVar29 - dVar20 * dVar28;
        dStack_180 = dVar21 * dVar29 + dVar20 * dVar28;
        dStack_158 = dVar19 * dVar30 + dVar20 * dVar29;
        adStack_148[0] = 1.0 - dVar21 * dVar30;
        dStack_150 = dVar27 * dVar28 - dVar20 * dVar30;
        dStack_178 = dVar19 * dVar30 - dVar20 * dVar29;
        dStack_160 = dVar27 * dVar28 + dVar20 * dVar30;
        dStack_188 = (1.0 - dVar27 * dVar29) - dVar19 * dVar28;
        dStack_168 = adStack_148[0] - dVar19 * dVar28;
        adStack_148[0] = adStack_148[0] - dVar27 * dVar29;
        for (lVar15 = 8; lVar15 != 0x68; lVar15 = lVar15 + 0x18) {
          pdVar11 = (double *)((long)param_1 + lVar15 + 0x60);
          dVar19 = *pdVar11;
          dVar21 = pdVar11[1];
                    /* WARNING: Could not inline here */
          dVar20 = (double)FUN_00106ce8(pdVar11[-1],&dStack_188);
          *(double *)((long)adStack_148 + lVar15) = dVar18 + dVar20;
          *(double *)((long)adStack_148 + lVar15 + 8) = dVar23 + dVar19;
          *(double *)((long)adStack_148 + lVar15 + 0x10) = dVar26 + dVar21;
        }
        param_3[8] = dStack_190;
        param_3[9] = dStack_198;
        param_3[0xc] = dVar23;
        param_3[0xd] = dVar26;
        param_3[0xe] = dVar22;
        param_3[0xf] = dVar23 + dVar25 + dVar24;
        param_3[10] = dStack_1a0;
        param_3[0xb] = dVar18;
        param_3[0x10] = dStack_1d8;
        param_3[0x11] = dStack_1c0;
        param_3[0x12] = dStack_1c8;
        param_3[0x13] = dStack_1d0;
        param_3[0x14] = dStack_1a8;
        param_3[0x15] = dStack_1b0;
        param_3[0x16] = dStack_1b8;
        for (lVar15 = 0; lVar15 != 0x60; lVar15 = lVar15 + 0x18) {
          uVar17 = *(undefined8 *)((long)adStack_148 + lVar15 + 0x10);
          uVar12 = *(undefined8 *)((long)adStack_148 + lVar15 + 8);
          *(undefined8 *)((long)param_3 + lVar15 + 200) =
               *(undefined8 *)((long)adStack_148 + lVar15 + 0x18);
          *(undefined8 *)((long)param_3 + lVar15 + 0xc0) = uVar17;
          *(undefined8 *)((long)param_3 + lVar15 + 0xb8) = uVar12;
          dVar18 = param_2[5];
          dVar20 = param_2[6];
          dVar19 = (double)(float)(*(double *)((long)adStack_148 + lVar15 + 0x18) *
                                  SQRT(param_2[0xb] * param_2[0xb] + param_2[0xc] * param_2[0xc]));
          *(double *)((long)param_3 + lVar15 + 0x118) = param_2[4] + dVar19;
          *(double *)((long)param_3 + lVar15 + 0x120) = dVar18 + dVar19;
          *(double *)((long)param_3 + lVar15 + 0x128) = dVar20 + dVar19;
        }
      }
      else if (iVar10 == 2) {
                    /* WARNING: Could not inline here */
        QVar31 = quat_multiply(*(Quat *)(param_2 + 7),*(Quat *)(param_1 + 0x40));
        *param_3 = QVar31.w;
        param_3[1] = QVar31.x;
        param_3[2] = QVar31.y;
        param_3[3] = QVar31.z;
        dVar22 = *param_2;
        dVar20 = *(double *)(param_1 + 0x3a);
        dStack_190 = (double)FUN_00105928(*(undefined8 *)(param_1 + 0x38),dVar20,dVar22,
                                          *(undefined8 *)(param_1 + 0x3e),0,0,
                                          *(undefined8 *)(param_1 + 0x3c));
        dVar18 = dStack_190 + 0.0;
        dVar19 = dVar20 + *(double *)(param_1 + 10);
        dVar21 = dVar22 + *(double *)(param_1 + 8);
        dVar23 = *(double *)(param_1 + 0x32);
        dVar25 = *(double *)(param_1 + 0x34);
        dVar24 = *(double *)(param_1 + 0x36);
        dStack_1a0 = dVar22;
        dStack_198 = dVar20;
        if (*(int *)(param_2 + 0x12) == 0) {
          dVar20 = *(double *)(param_1 + 0x16);
        }
        else {
          dVar20 = (double)FUN_00103078(*param_3,param_3[1],param_3[2],param_3[3],param_2[0xe],
                                        param_2[0xf],param_2[0x10],param_2[0x11]);
          dVar20 = dVar20 + *(double *)(param_1 + 0x14);
        }
        dStack_1f8 = 5.26166078982844e-318;
        pdStack_210 = param_3;
        puStack_200 = puVar16;
        sincos(dVar20 * DAT_00107ff8,&dStack_208,adStack_220 + 1);
        puVar16 = puStack_200;
        pdVar3 = pdStack_210;
        dStack_b0 = dStack_208;
        adStack_e0[1] = 0.0;
        uStack_a8 = 0;
        uStack_b8 = 0;
        adStack_e0[0] = adStack_220[1];
        uStack_c0 = _UNK_00108008;
        uStack_c8 = _DAT_00108000;
        adStack_e0[2] = -dStack_208;
        dStack_a0 = adStack_220[1];
        pdVar11 = (double *)(puStack_200 + -0xd0);
        adStack_220[0] = *(double *)(param_1 + 0xe);
        adStack_220[1] = 0.0;
        pdStack_210 = (double *)0x0;
        for (lVar15 = 0; lVar15 != 3; lVar15 = lVar15 + 1) {
          dVar20 = 0.0;
          pdVar14 = pdVar11;
          for (lVar13 = 0; lVar13 != 0x18; lVar13 = lVar13 + 8) {
            dVar20 = dVar20 + *pdVar14 * *(double *)((long)adStack_220 + lVar13);
            pdVar14 = pdVar14 + 3;
          }
          (&dStack_208)[lVar15] = dVar20;
          pdVar11 = pdVar11 + 1;
        }
        dStack_1c0 = dVar18 + dVar23 + dStack_208;
        dStack_1c8 = dVar19 + dVar25 + (double)puStack_200;
        dStack_1d0 = dVar21 + dVar24 + dStack_1f8;
        dVar22 = dStack_1c0 - dVar18;
        dVar26 = dStack_1c8 - dVar19;
        dVar27 = dStack_1d0 - dVar21;
        dStack_1b8 = dVar21 + dVar24;
        dStack_1b0 = dVar19 + dVar25;
        dStack_1a8 = dVar18 + dVar23;
                    /* WARNING: Return address prevents inlining here */
                    /* WARNING: Could not inline here */
        dVar20 = (double)thunk_FUN_00107024();
        dVar23 = 1.0 / dVar20;
        dVar22 = dVar22 * dVar23;
        local_1e8 = dVar26 * dVar23;
        dVar27 = dVar27 * dVar23;
        local_1e0 = 0.0;
        dVar23 = *(double *)(param_1 + 0x18);
        dVar23 = ((dVar23 * dVar23 + dVar20 * dVar20) -
                 *(double *)(param_1 + 0xc) * *(double *)(param_1 + 0xc)) /
                 ((dVar23 + dVar23) * dVar20);
        dVar25 = 1.0 - dVar23 * dVar23;
        dVar20 = 0.0;
        if (0.0 <= dVar25) {
          dVar20 = SQRT(dVar25);
        }
        dVar23 = dVar23 * *(double *)(param_1 + 0x18);
        dVar20 = dVar20 * *(double *)(param_1 + 0x18);
        dVar25 = dVar22 * dVar23 + -dVar27 * dVar20;
        dVar24 = local_1e8 * dVar23 + dVar20 * 0.0;
        dVar20 = dVar27 * dVar23 + dVar22 * dVar20;
        dStack_1d8 = dVar21 + dVar20;
        a.z = 0.0;
        a.x = 1.0;
        a.y = 0.0;
        b.y = dVar24;
        b.x = dVar25;
        b.z = dVar20;
                    /* WARNING: Return address prevents inlining here */
                    /* WARNING: Could not inline here */
        QVar31 = quat_from_vectors(a,b);
        dVar26 = QVar31.z;
        dVar23 = QVar31.y;
        dVar22 = QVar31.x;
        dVar20 = QVar31.w;
        *(Quat *)(pdVar3 + 4) = QVar31;
        dVar27 = dVar22 + dVar22;
        dVar30 = dVar23 + dVar23;
        dVar29 = dVar26 + dVar26;
        dStack_170 = dVar22 * dVar30 - dVar20 * dVar29;
        dStack_180 = dVar22 * dVar30 + dVar20 * dVar29;
        dStack_158 = dVar26 * dVar27 + dVar20 * dVar30;
        adStack_148[0] = 1.0 - dVar22 * dVar27;
        dStack_150 = dVar23 * dVar29 - dVar20 * dVar27;
        dStack_178 = dVar26 * dVar27 - dVar20 * dVar30;
        dStack_160 = dVar23 * dVar29 + dVar20 * dVar27;
        dStack_188 = (1.0 - dVar23 * dVar30) - dVar26 * dVar29;
        dStack_168 = adStack_148[0] - dVar26 * dVar29;
        adStack_148[0] = adStack_148[0] - dVar23 * dVar30;
        for (lVar15 = 0; lVar15 != 0x60; lVar15 = lVar15 + 0x18) {
          puVar1 = (undefined8 *)((long)param_1 + lVar15 + 0x68);
          dVar22 = (double)puVar1[1];
          dVar23 = (double)puVar1[2];
                    /* WARNING: Could not inline here */
          dVar20 = (double)FUN_00106ce8(*puVar1,&dStack_188);
          *(double *)((long)adStack_148 + lVar15 + 8) = dVar18 + dVar20;
          *(double *)((long)adStack_148 + lVar15 + 0x10) = dVar19 + dVar22;
          *(double *)((long)adStack_148 + lVar15 + 0x18) = dVar21 + dVar23;
        }
        pdVar3[8] = dStack_190;
        pdVar3[9] = dStack_198;
        pdVar3[0xc] = dVar19;
        pdVar3[0xd] = dVar21;
        pdVar3[0xe] = dVar18 + dVar25;
        pdVar3[0xf] = dVar19 + dVar24;
        pdVar3[10] = dStack_1a0;
        pdVar3[0xb] = dVar18;
        pdVar3[0x10] = dStack_1d8;
        pdVar3[0x11] = dStack_1c0;
        pdVar3[0x12] = dStack_1c8;
        pdVar3[0x13] = dStack_1d0;
        pdVar3[0x14] = dStack_1a8;
        pdVar3[0x15] = dStack_1b0;
        pdVar3[0x16] = dStack_1b8;
        for (lVar15 = 0; lVar15 != 0x60; lVar15 = lVar15 + 0x18) {
          uVar17 = *(undefined8 *)((long)adStack_148 + lVar15 + 0x10);
          uVar12 = *(undefined8 *)((long)adStack_148 + lVar15 + 8);
          *(undefined8 *)((long)pdVar3 + lVar15 + 200) =
               *(undefined8 *)((long)adStack_148 + lVar15 + 0x18);
          *(undefined8 *)((long)pdVar3 + lVar15 + 0xc0) = uVar17;
          *(undefined8 *)((long)pdVar3 + lVar15 + 0xb8) = uVar12;
          dVar18 = param_2[5];
          dVar20 = param_2[6];
          dVar19 = (double)(float)(*(double *)((long)adStack_148 + lVar15 + 0x18) *
                                  SQRT(param_2[0xb] * param_2[0xb] + param_2[0xc] * param_2[0xc]));
          *(double *)((long)pdVar3 + lVar15 + 0x118) = param_2[4] + dVar19;
          *(double *)((long)pdVar3 + lVar15 + 0x120) = dVar18 + dVar19;
          *(double *)((long)pdVar3 + lVar15 + 0x128) = dVar20 + dVar19;
        }
      }
      else {
        if (iVar10 != 1) {
          uVar12 = 0xffffffff;
          goto LAB_001040e4;
        }
        dVar18 = param_2[7];
        dVar19 = param_2[8];
        dVar21 = param_2[9];
        dVar25 = param_2[10];
        dVar24 = *(double *)(param_1 + 0x14);
        dVar26 = *(double *)(param_1 + 0x16);
        dVar27 = *(double *)(param_1 + 0x18);
        dVar30 = *(double *)(param_1 + 0x1a);
        dVar20 = ((dVar18 * dVar24 - dVar19 * dVar26) - dVar21 * dVar27) - dVar25 * dVar30;
        dVar23 = (dVar25 * dVar26 + dVar21 * dVar24 + dVar18 * dVar27) - dVar19 * dVar30;
        dVar22 = (dVar21 * dVar30 + dVar19 * dVar24 + dVar18 * dVar26) - dVar25 * dVar27;
        dVar18 = (dVar19 * dVar27 + dVar25 * dVar24 + dVar18 * dVar30) - dVar21 * dVar26;
        if (dVar20 < 0.0) {
          dVar20 = -dVar20;
          dVar22 = -dVar22;
          dVar23 = -dVar23;
          dVar18 = -dVar18;
        }
        *param_3 = dVar20;
        param_3[1] = dVar22;
        param_3[2] = dVar23;
        param_3[3] = dVar18;
        for (lVar15 = 0; lVar15 != 0x30; lVar15 = lVar15 + 0x18) {
          adStack_148[2] = *(double *)((long)param_1 + lVar15 + 0x28);
          adStack_148[1] = *(double *)((long)param_1 + lVar15 + 0x20);
          dVar18 = *(double *)((long)param_1 + lVar15 + 0x30);
          dVar20 = *param_2;
          *(double *)((long)param_3 + lVar15 + 0xc0) = adStack_148[2];
          *(double *)((long)param_3 + lVar15 + 0xb8) = adStack_148[1];
          dVar18 = dVar18 + dVar20;
          *(double *)((long)param_3 + lVar15 + 200) = dVar18;
          dVar20 = param_2[5];
          dVar19 = param_2[6];
          dVar18 = (double)(float)(dVar18 * SQRT(param_2[0xb] * param_2[0xb] +
                                                 param_2[0xc] * param_2[0xc]));
          *(double *)((long)param_3 + lVar15 + 0x118) = param_2[4] + dVar18;
          *(double *)((long)param_3 + lVar15 + 0x120) = dVar20 + dVar18;
          *(double *)((long)param_3 + lVar15 + 0x128) = dVar19 + dVar18;
        }
      }
      uVar12 = 0;
    }
    else {
      uVar12 = 0xfffffffd;
    }
  }
  else {
    uVar12 = 0xfffffffe;
  }
LAB_001040e4:
  if (*(long *)(lVar2 + 0x28) == *(long *)(puVar16 + -0x88)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar12);
}

