/* Artifact: libexcavator.so | Address: 001034b4 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00105bf8 */
/* WARNING: Inlined function: FUN_00106dec */
/* WARNING: Inlined function: FUN_00106564 */
/* WARNING: Inlined function: FUN_00106e04 */
/* WARNING: Inlined function: FUN_00105ff4 */
/* WARNING: Inlined function: FUN_00106e28 */
/* WARNING: Inlined function: FUN_00105fe4 */
/* WARNING: Inlined function: quat_from_vectors */
/* WARNING: Inlined function: FUN_00105e70 */
/* WARNING: Inlined function: FUN_00107400 */
/* WARNING: Inlined function: FUN_00106ce8 */
/* WARNING: Inlined function: FUN_00106718 */
/* WARNING: Inlined function: FUN_00105b04 */
/* WARNING: Inlined function: quat_conjugate */
/* WARNING: Inlined function: quat_rotate */
/* WARNING: Inlined function: point_add */
/* WARNING: Inlined function: FUN_00106e90 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 FUN_001034b4(long param_1,uint param_2)

{
  undefined8 uVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  double *pdVar4;
  bool bVar5;
  int iVar6;
  double *pdVar7;
  ulong uVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  long lVar12;
  double *pdVar13;
  double *pdVar14;
  int iVar15;
  long lVar16;
  double *pdVar17;
  undefined1 *puVar18;
  long lVar19;
  double *pdVar20;
  long lVar21;
  int iVar22;
  ulong uVar23;
  undefined8 *puVar24;
  undefined8 *puVar25;
  undefined1 *puVar26;
  double dVar27;
  undefined8 uVar28;
  double dVar29;
  undefined8 uVar30;
  double dVar31;
  double dVar32;
  double dVar33;
  double dVar34;
  double dVar35;
  double dVar36;
  double dVar37;
  double dVar38;
  double unaff_d11;
  double unaff_d12;
  double unaff_d13;
  double dVar39;
  double unaff_d14;
  double dVar40;
  double dVar41;
  double dVar42;
  double dVar43;
  undefined1 auStack_440 [40];
  double local_418;
  double dStack_410;
  double local_408;
  double dStack_400;
  undefined8 auStack_3a8 [48];
  undefined8 uStack_228;
  double local_220 [46];
  double local_b0;
  
  puVar26 = &stack0xfffffffffffffff0;
  puVar3 = auStack_440;
  pdVar7 = (double *)tpidr_el0;
  local_b0 = pdVar7[5];
  if (param_2 - 3 < 0xe) {
    lVar21 = (long)(int)param_2;
    pdVar14 = local_220;
    pdVar13 = (double *)(param_1 + 0x10);
    for (lVar11 = 0; lVar11 < lVar21; lVar11 = lVar11 + 1) {
      dVar29 = pdVar13[-1];
      dVar33 = *pdVar13;
      dVar35 = dVar29 * pdVar13[1];
      dVar37 = pdVar13[-2] * dVar33;
      dVar27 = dVar29 * pdVar13[-2];
      dVar32 = pdVar13[1] * dVar33;
      *pdVar14 = dVar27 + dVar27 + dVar32 + dVar32;
      pdVar14[-2] = (dVar35 + dVar35) - (dVar37 + dVar37);
      pdVar14[-1] = -((1.0 - (dVar29 * dVar29 + dVar29 * dVar29)) -
                     (dVar33 * dVar33 + dVar33 * dVar33));
      pdVar14 = pdVar14 + 3;
      pdVar13 = pdVar13 + 4;
    }
    uVar8 = (ulong)param_2;
    local_418 = 0.0;
    dStack_410 = 0.0;
    local_408 = 0.0;
    dStack_400 = 0.0;
    if ((int)param_2 < 3) {
      iVar22 = -1;
    }
    else {
      dVar27 = 0.0;
      dVar29 = 0.0;
      dVar32 = 0.0;
      pdVar14 = local_220;
      for (uVar23 = uVar8; uVar23 != 0; uVar23 = uVar23 - 1) {
        dVar27 = dVar27 + pdVar14[-2];
        dVar29 = dVar29 + pdVar14[-1];
        dVar32 = dVar32 + *pdVar14;
        pdVar14 = pdVar14 + 3;
      }
      dVar34 = 1.0 / (double)(int)param_2;
      dVar33 = 0.0;
      dVar35 = 0.0;
      dVar37 = 0.0;
      dVar40 = 0.0;
      dVar39 = 0.0;
      pdVar14 = local_220;
      for (; uVar8 != 0; uVar8 = uVar8 - 1) {
        dVar36 = pdVar14[-2] - dVar27 * dVar34;
        dVar38 = pdVar14[-1] - dVar29 * dVar34;
        dVar31 = *pdVar14 - dVar32 * dVar34;
        dVar39 = dVar39 + dVar36 * dVar36;
        dVar40 = dVar40 + dVar36 * dVar38;
        dVar37 = dVar37 + dVar38 * dVar38;
        dVar33 = dVar33 + dVar36 * dVar31;
        dVar35 = dVar35 + dVar38 * dVar31;
        pdVar14 = pdVar14 + 3;
      }
      dVar35 = (dVar33 * dVar40 - dVar35 * dVar39) / (dVar37 * dVar40 - dVar37 * dVar39);
      dVar39 = (dVar33 - dVar40 * dVar35) / dVar39;
      dVar33 = (1.0 - dVar39 * dVar39) - dVar35 * dVar35;
      if (0.0 <= dVar33) {
        local_408 = SQRT(dVar33);
        local_418 = -(dVar39 * local_408);
        dStack_410 = -(dVar35 * local_408);
        dStack_400 = local_408 * dVar32 * dVar34 +
                     local_418 * dVar27 * dVar34 + dStack_410 * dVar29 * dVar34;
        if (0.0 <= dStack_400) {
          iVar22 = 0;
        }
        else {
          dStack_400 = -dStack_400;
          iVar22 = 0;
          local_418 = -local_418;
          dStack_410 = -dStack_410;
          local_408 = -local_408;
        }
      }
      else {
        iVar22 = -2;
      }
    }
    puVar3 = auStack_440;
    if (iVar22 == 0) {
      puVar2 = auStack_440;
      pdVar14 = (double *)(ulong)param_2;
      pdVar13 = pdVar7;
      dVar27 = local_418;
      dVar29 = local_408;
      dVar32 = dStack_410;
      dVar33 = DAT_00107838;
      for (iVar22 = 0; puVar3 = puVar2, pdVar7 = pdVar13, iVar22 != 4; iVar22 = iVar22 + 1) {
        *(double *)(puVar2 + -0x50) = dVar33;
        *(double *)(puVar2 + -0x48) = unaff_d14;
        *(double *)(puVar2 + -0x40) = unaff_d13;
        *(double *)(puVar2 + -0x38) = unaff_d12;
        *(double *)(puVar2 + -0x30) = unaff_d11;
        *(double *)(puVar2 + -0x28) = dVar32;
        *(double *)(puVar2 + -0x20) = dVar29;
        *(double *)(puVar2 + -0x18) = dVar27;
        *(undefined1 **)(puVar2 + -0x10) = puVar26;
        *(undefined8 *)(puVar2 + -8) = 0x1035fc;
        dVar33 = SQRT(dVar29 * dVar29 + dVar27 * dVar27 + dVar32 * dVar32);
                    /* WARNING: Could not inline here */
        dVar35 = (double)thunk_FUN_00107024(0,0,0x3ff0000000000000);
        bVar5 = true;
        if ((9.5367431640625e-07 <= dVar33) && (bVar5 = false, !NAN(dVar35))) {
          bVar5 = dVar35 < 9.5367431640625e-07;
        }
        dVar37 = 0.0;
        if (bVar5) {
          dVar35 = 1.0;
          dVar40 = 0.0;
          unaff_d14 = 0.0;
        }
        else {
          dVar33 = (dVar29 * 1.0 + dVar27 * 0.0 + dVar32 * 0.0) / (dVar33 * dVar35);
          dVar35 = 1.0;
          if (1.0 <= dVar33) {
            dVar40 = 0.0;
            unaff_d14 = 0.0;
            dVar37 = 0.0;
          }
          else {
                    /* WARNING: Could not inline here */
            dVar39 = (double)thunk_FUN_00107024();
            dVar40 = 0.0;
            unaff_d14 = 0.0;
            dVar37 = 0.0;
            if (9.5367431640625e-07 < dVar39) {
              dVar39 = SQRT((1.0 - dVar33) * 0.5) / dVar39;
              dVar35 = SQRT((dVar33 + 1.0) * 0.5);
              dVar37 = (dVar32 * 1.0 - dVar29 * 0.0) * dVar39;
              dVar40 = (dVar29 * 0.0 - dVar27 * 1.0) * dVar39;
              unaff_d14 = (dVar27 * 0.0 - dVar32 * 0.0) * dVar39;
            }
          }
        }
        dVar39 = DAT_00107838;
        uVar1 = *(undefined8 *)(puVar2 + -0x10);
        dVar29 = *(double *)(puVar2 + -0x20);
        dVar27 = *(double *)(puVar2 + -0x18);
        dVar32 = *(double *)(puVar2 + -0x28);
        dVar33 = *(double *)(puVar2 + -0x50);
        dVar34 = dVar37 + dVar37;
        dVar36 = dVar40 + dVar40;
        dVar38 = unaff_d14 + unaff_d14;
        dVar31 = 1.0 - dVar37 * dVar34;
        *(double *)(puVar2 + 0x58) = unaff_d14 * dVar34 - dVar35 * dVar36;
        *(double *)(puVar2 + 0x60) = dVar37 * dVar36 - dVar35 * dVar38;
        *(double *)(puVar2 + 0x78) = unaff_d14 * dVar34 + dVar35 * dVar36;
        *(double *)(puVar2 + 0x80) = dVar40 * dVar38 - dVar35 * dVar34;
        *(double *)(puVar2 + 0x48) = (1.0 - dVar40 * dVar36) - unaff_d14 * dVar38;
        *(double *)(puVar2 + 0x50) = dVar37 * dVar36 + dVar35 * dVar38;
        *(double *)(puVar2 + 0x68) = dVar31 - unaff_d14 * dVar38;
        *(double *)(puVar2 + 0x70) = dVar40 * dVar38 + dVar35 * dVar34;
        *(double *)(puVar2 + 0x88) = dVar31 - dVar40 * dVar36;
        puVar24 = auStack_3a8;
        puVar25 = &uStack_228;
        for (lVar11 = 0; lVar11 < lVar21; lVar11 = lVar11 + 1) {
          uVar28 = *puVar25;
          uVar30 = puVar25[1];
          pdVar7 = (double *)(puVar2 + 0x48);
          *(undefined8 *)(puVar2 + -0x30) = puVar25[-1];
          *(undefined8 *)(puVar2 + -0x28) = uVar28;
          *(undefined8 *)(puVar2 + -0x20) = uVar30;
          for (lVar12 = 0; lVar12 != 3; lVar12 = lVar12 + 1) {
            dVar34 = 0.0;
            pdVar17 = pdVar7;
            for (lVar16 = 0; lVar16 != 0x18; lVar16 = lVar16 + 8) {
              dVar34 = dVar34 + *pdVar17 * *(double *)(puVar2 + lVar16 + -0x30);
              pdVar17 = pdVar17 + 3;
            }
            *(double *)(puVar2 + lVar12 * 8 + -0x18) = dVar34;
            pdVar7 = pdVar7 + 1;
          }
          uVar28 = *(undefined8 *)(puVar2 + -0x10);
          uVar30 = *(undefined8 *)(puVar2 + -8);
          puVar24[-1] = *(undefined8 *)(puVar2 + -0x18);
          *puVar24 = uVar28;
          puVar24[1] = uVar30;
          puVar25 = puVar25 + 3;
          puVar24 = puVar24 + 3;
        }
        pdVar17 = (double *)(puVar2 + 0x90);
        pdVar7 = (double *)(puVar2 + 0x10);
        pdVar20 = (double *)(puVar2 + 8);
        uVar8 = (ulong)pdVar14 & 0xffffffff;
        *(undefined8 *)(puVar2 + 0x10) = 0;
        *(undefined8 *)(puVar2 + 0x18) = 0;
        *(undefined8 *)(puVar2 + 0x20) = 0;
        *(undefined8 *)(puVar2 + 8) = 0;
        pdVar4 = (double *)(puVar2 + -0xf0);
        *(long *)(puVar2 + -0x30) = lVar21;
        *(double **)(puVar2 + -0x20) = pdVar13;
        *(double **)(puVar2 + -0x18) = pdVar14;
        *(undefined8 *)(puVar2 + -0x10) = uVar1;
        *(undefined8 *)(puVar2 + -8) = 0x10366c;
        lVar21 = tpidr_el0;
        puVar26 = puVar2 + -0x10;
        *(undefined8 *)(puVar2 + -0x38) = *(undefined8 *)(lVar21 + 0x28);
        if ((int)pdVar14 < 3) {
          iVar6 = -1;
          pdVar20 = pdVar14;
          pdVar7 = pdVar13;
LAB_00106900:
          if (*(long *)(lVar21 + 0x28) == *(long *)(puVar26 + -0x28)) {
            puVar26 = *(undefined1 **)((long)pdVar4 + 0xe0);
            pdVar7 = *(double **)((long)pdVar4 + 0xd0);
            pdVar20 = *(double **)((long)pdVar4 + 0xd8);
            lVar21 = *(long *)((long)pdVar4 + 0xc0);
            puVar3 = (undefined1 *)((long)pdVar4 + 0xf0);
          }
          else {
                    /* WARNING: Subroutine does not return */
            iVar6 = __stack_chk_fail();
            puVar3 = (undefined1 *)pdVar4;
          }
        }
        else {
          puVar3 = puVar2 + -0xa0;
          for (lVar11 = 0; lVar11 != 3; lVar11 = lVar11 + 1) {
            for (lVar12 = 0; lVar12 != 0x20; lVar12 = lVar12 + 8) {
              *(undefined8 *)(puVar3 + lVar12) = 0;
            }
            puVar3 = puVar3 + 0x20;
          }
          for (; uVar8 != 0; uVar8 = uVar8 - 1) {
            dVar36 = pdVar17[1];
            dVar34 = *pdVar17;
            dVar31 = dVar34 * dVar34;
            dVar38 = dVar36 * dVar36;
            *(double *)(puVar2 + -0x90) = dVar34 + *(double *)(puVar2 + -0x90);
            *(double *)(puVar2 + -0x98) = dVar36 * dVar34 + *(double *)(puVar2 + -0x98);
            *(double *)(puVar2 + -0xa0) = dVar31 + *(double *)(puVar2 + -0xa0);
            *(double *)(puVar2 + -0x48) = *(double *)(puVar2 + -0x48) - (dVar31 + dVar38);
            *(double *)(puVar2 + -0x88) =
                 *(double *)(puVar2 + -0x88) - (dVar34 * dVar31 + dVar38 * dVar34);
            *(double *)(puVar2 + -0x70) = dVar36 + *(double *)(puVar2 + -0x70);
            *(double *)(puVar2 + -0x78) = dVar38 + *(double *)(puVar2 + -0x78);
            *(double *)(puVar2 + -0x68) =
                 *(double *)(puVar2 + -0x68) - (dVar31 * dVar36 + dVar38 * dVar36);
            pdVar17 = pdVar17 + 3;
          }
          *(double *)(puVar2 + -0x50) = (double)(int)pdVar14;
          puVar3 = puVar2 + -0xa0;
          lVar11 = 0;
          while (lVar11 != 3) {
            lVar16 = 0x20;
            for (lVar12 = 1; lVar11 + lVar12 != 3; lVar12 = lVar12 + 1) {
              *(undefined8 *)(puVar3 + lVar16) = *(undefined8 *)(puVar3 + lVar12 * 8);
              lVar16 = lVar16 + 0x20;
            }
            puVar3 = puVar3 + 0x28;
            lVar11 = lVar11 + 1;
          }
          *(undefined1 **)(puVar2 + -0xb8) = puVar2 + -0xa0;
          *(undefined1 **)(puVar2 + -0xb0) = puVar2 + -0x80;
          *(undefined1 **)(puVar2 + -0xa8) = puVar2 + -0x60;
          iVar6 = 0;
          lVar12 = 4;
          for (lVar11 = 0; dVar34 = DAT_00107838, lVar11 < 4 && iVar6 < 2; lVar11 = lVar11 + 1) {
            lVar19 = *(long *)(puVar2 + (long)iVar6 * 8 + -0xb8);
            lVar16 = (long)iVar6 + 1;
            for (lVar10 = lVar16; dVar34 = ABS(*(double *)(lVar19 + lVar11 * 8)), lVar10 < 3;
                lVar10 = lVar10 + 1) {
              lVar9 = *(long *)(puVar2 + lVar10 * 8 + -0xb8);
              if (dVar34 < ABS(*(double *)(lVar9 + lVar11 * 8))) {
                *(long *)(puVar2 + lVar10 * 8 + -0xb8) = lVar19;
                *(long *)(puVar2 + (long)iVar6 * 8 + -0xb8) = lVar9;
                lVar19 = lVar9;
              }
            }
            if (dVar39 <= dVar34) {
              for (; lVar16 < 3; lVar16 = lVar16 + 1) {
                dVar34 = *(double *)(*(long *)(puVar2 + lVar16 * 8 + -0xb8) + lVar11 * 8);
                if (dVar39 <= ABS(dVar34)) {
                  dVar36 = *(double *)(lVar19 + lVar11 * 8);
                  pdVar14 = (double *)(lVar19 + lVar11 * 8);
                  pdVar13 = (double *)(*(long *)(puVar2 + lVar16 * 8 + -0xb8) + lVar11 * 8);
                  for (lVar10 = lVar12; lVar10 != 0; lVar10 = lVar10 + -1) {
                    *pdVar13 = *pdVar13 - (dVar34 / dVar36) * *pdVar14;
                    pdVar14 = pdVar14 + 1;
                    pdVar13 = pdVar13 + 1;
                  }
                }
              }
            }
            else {
              iVar6 = iVar6 + -1;
            }
            iVar6 = iVar6 + 1;
            lVar12 = lVar12 + -1;
          }
          lVar11 = 0;
          lVar12 = 4;
          for (iVar6 = 0; iVar6 < 3 && lVar11 < 4; iVar6 = iVar6 + 1) {
            lVar16 = *(long *)(puVar2 + (long)iVar6 * 8 + -0xb8);
            dVar39 = *(double *)(lVar16 + lVar11 * 8);
            if (dVar34 <= ABS(dVar39)) {
              pdVar14 = (double *)(lVar16 + lVar11 * 8);
              for (lVar10 = lVar12; lVar10 != 0; lVar10 = lVar10 + -1) {
                *pdVar14 = (1.0 / dVar39) * *pdVar14;
                pdVar14 = pdVar14 + 1;
              }
              for (lVar10 = 0; lVar10 < iVar6; lVar10 = lVar10 + 1) {
                dVar39 = *(double *)(*(long *)(puVar2 + lVar10 * 8 + -0xb8) + lVar11 * 8);
                if (dVar34 <= ABS(dVar39)) {
                  dVar36 = *(double *)(lVar16 + lVar11 * 8);
                  lVar9 = *(long *)(puVar2 + lVar10 * 8 + -0xb8) + lVar11 * 8;
                  for (lVar19 = 0; lVar12 != lVar19; lVar19 = lVar19 + 1) {
                    *(double *)(lVar9 + lVar19 * 8) =
                         *(double *)(lVar9 + lVar19 * 8) -
                         (dVar39 / dVar36) * *(double *)(lVar16 + lVar11 * 8 + lVar19 * 8);
                  }
                }
              }
            }
            else {
              iVar6 = iVar6 + -1;
            }
            lVar11 = lVar11 + 1;
            lVar12 = lVar12 + -1;
          }
          *(undefined8 *)(puVar2 + -200) = _UNK_00107fe0;
          *(undefined8 *)(puVar2 + -0xd0) = _DAT_00107fd8;
          *(undefined8 *)(puVar2 + -0xc0) = DAT_00107fe8;
          puVar3 = puVar2 + -400;
          pdVar4 = (double *)(puVar2 + -400);
          *(undefined1 **)(puVar2 + -0x100) = puVar26;
          *(undefined8 *)(puVar2 + -0xf8) = 0x1068b8;
          lVar12 = tpidr_el0;
          puVar26 = puVar2 + -0x100;
          *(undefined8 *)(puVar2 + -0x108) = *(undefined8 *)(lVar12 + 0x28);
          for (lVar11 = 0; lVar11 < 3; lVar11 = lVar11 + 1) {
            *(undefined8 *)(puVar2 + lVar11 * 8 + -0xf0) = 0;
          }
          for (lVar11 = 0; lVar11 != 0x80; lVar11 = lVar11 + 4) {
            *(undefined4 *)(puVar2 + lVar11 + -0x188) = 0xffffffff;
          }
          lVar11 = 0;
          iVar15 = 0;
          for (iVar6 = 0; iVar6 < 3 && lVar11 < 3; iVar6 = iVar6 + 1) {
            if (ABS(*(double *)(*(long *)(puVar2 + (long)iVar6 * 8 + -0xb8) + lVar11 * 8)) <
                DAT_00107838) {
              *(int *)(puVar2 + lVar11 * 4 + -0x188) = iVar15;
              iVar15 = iVar15 + 1;
              iVar6 = iVar6 + -1;
            }
            lVar11 = lVar11 + 1;
          }
          for (; lVar11 < 3; lVar11 = lVar11 + 1) {
            *(int *)(puVar2 + lVar11 * 4 + -0x188) = iVar15;
            iVar15 = iVar15 + 1;
          }
          lVar11 = 0;
          puVar18 = puVar2 + -0x188;
          for (iVar6 = 0; iVar6 < 3 && lVar11 < 4; iVar6 = iVar6 + 1) {
            lVar16 = *(long *)(puVar2 + (long)iVar6 * 8 + -0xb8);
            if (DAT_00107838 <= ABS(*(double *)(lVar16 + lVar11 * 8))) {
              for (lVar10 = 1; (int)lVar11 + (int)lVar10 < 3; lVar10 = lVar10 + 1) {
                if (-1 < *(int *)(puVar18 + lVar10 * 4)) {
                  *(double *)(puVar2 + lVar11 * 8 + -0xf0) =
                       *(double *)(puVar2 + lVar11 * 8 + -0xf0) -
                       *(double *)(puVar2 + (long)*(int *)(puVar18 + lVar10 * 4) * 8 + -0xd0) *
                       *(double *)(lVar16 + lVar11 * 8 + lVar10 * 8);
                }
              }
              *(double *)(puVar2 + lVar11 * 8 + -0xf0) =
                   *(double *)(lVar16 + 0x18) + *(double *)(puVar2 + lVar11 * 8 + -0xf0);
            }
            else {
              iVar6 = iVar6 + -1;
              *(undefined8 *)(puVar2 + lVar11 * 8 + -0xf0) =
                   *(undefined8 *)
                    (puVar2 + (long)*(int *)(puVar2 + lVar11 * 4 + -0x188) * 8 + -0xd0);
            }
            lVar11 = lVar11 + 1;
            puVar18 = puVar18 + 4;
          }
          if (*(long *)(lVar12 + 0x28) == *(long *)(puVar2 + -0x108)) {
            puVar26 = *(undefined1 **)(puVar2 + -0x100);
            pdVar4 = (double *)(puVar2 + -0xf0);
code_r0x001068b8:
            dVar34 = *pdVar4 * -0.5;
            dVar39 = pdVar4[1] * -0.5;
            dVar36 = (dVar34 * dVar34 + dVar39 * dVar39) - pdVar4[2];
            if (0.0 <= dVar36) {
              iVar6 = 0;
              *pdVar7 = dVar34;
              *(double *)(puVar2 + 0x18) = dVar39;
              *(undefined8 *)(puVar2 + 0x20) = 0;
              *pdVar20 = SQRT(dVar36);
            }
            else {
              iVar6 = -2;
            }
            goto LAB_00106900;
          }
                    /* WARNING: Subroutine does not return */
          iVar6 = __stack_chk_fail();
          if  goto code_r0x001068b8;
        }
        if (iVar6 != 0) goto LAB_00103590;
        dVar37 = -dVar37;
        dVar40 = -dVar40;
        dVar39 = -unaff_d14;
        dVar34 = *(double *)(puVar3 + 0x10);
        dVar36 = *(double *)(puVar3 + 0x18);
        dVar38 = *(double *)(puVar3 + 0x20);
        dVar31 = dVar37 + dVar37;
        dVar41 = dVar40 + dVar40;
        dVar42 = dVar39 + dVar39;
        dVar43 = 1.0 - dVar37 * dVar31;
        unaff_d11 = dVar38 * (dVar39 * dVar31 + dVar35 * dVar41) +
                    dVar36 * (dVar37 * dVar41 - dVar35 * dVar42) +
                    dVar34 * ((1.0 - dVar40 * dVar41) - dVar39 * dVar42);
        unaff_d12 = dVar38 * (dVar40 * dVar42 - dVar35 * dVar31) +
                    dVar34 * (dVar37 * dVar41 + dVar35 * dVar42) +
                    dVar36 * (dVar43 - dVar39 * dVar42);
        unaff_d13 = dVar34 * (dVar39 * dVar31 - dVar35 * dVar41) +
                    dVar36 * (dVar40 * dVar42 + dVar35 * dVar31) +
                    dVar38 * (dVar43 - dVar40 * dVar41);
        dVar27 = dVar27 + unaff_d11;
        dVar32 = dVar32 + unaff_d12;
        dVar29 = dVar29 + unaff_d13;
                    /* WARNING: Could not inline here */
        dVar35 = (double)thunk_FUN_00107024(unaff_d11,unaff_d12,unaff_d13);
        if (dVar35 < dVar33) break;
        puVar2 = puVar3;
        pdVar14 = pdVar20;
        pdVar13 = pdVar7;
      }
      *(double *)(puVar3 + -0x30) = dVar32;
      *(double *)(puVar3 + -0x20) = dVar29;
      *(double *)(puVar3 + -0x18) = dVar27;
      *(undefined1 **)(puVar3 + -0x10) = puVar26;
      *(undefined8 *)(puVar3 + -8) = 0x1036d4;
                    /* WARNING: Could not inline here */
      dVar33 = (double)thunk_FUN_00107024();
      if (9.5367431640625e-07 <= dVar33) {
        dVar33 = 1.0 / dVar33;
        dVar27 = dVar27 * dVar33;
        dVar32 = dVar32 * dVar33;
        dVar29 = dVar29 * dVar33;
      }
      else {
        dVar32 = 0.0;
        dVar27 = 1.0;
        dVar29 = 0.0;
      }
      puVar26 = *(undefined1 **)(puVar3 + -0x10);
      dVar32 = -dVar32;
      goto LAB_00103594;
    }
  }
LAB_00103590:
  dVar27 = 0.0;
  dVar29 = 0.0;
  dVar32 = 0.0;
LAB_00103594:
  if (pdVar7[5] == *(double *)(puVar26 + -0xa0)) {
    return *(undefined8 *)(puVar3 + 0x438);
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(dVar27,dVar29,dVar32);
}

