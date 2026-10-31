/* Artifact: libyctdevice.so | Address: 00747f80 | Ghidra static pseudocode; types require review. */

/* gnss_trans::GnssParamTransform::ComputeSevenParameters(std::__ndk1::vector<gnss_trans::Point3D,
   std::__ndk1::allocator<gnss_trans::Point3D> > const&, std::__ndk1::vector<gnss_trans::Point3D,
   std::__ndk1::allocator<gnss_trans::Point3D> > const&, gnss_trans::SevenParameter&,
   gnss_trans::ResidualError*) */

undefined8
gnss_trans::GnssParamTransform::ComputeSevenParameters
          (vector *param_1,vector *param_2,SevenParameter *param_3,ResidualError *param_4)

{
  double *pdVar1;
  ResidualError *pRVar2;
  ulong uVar3;
  ulong uVar4;
  ulong uVar5;
  undefined8 *puVar6;
  undefined8 *puVar7;
  long lVar8;
  void *pvVar9;
  uint uVar10;
  bool bVar11;
  undefined8 uVar12;
  double *pdVar13;
  double *pdVar14;
  long lVar15;
  char *__s;
  long *plVar16;
  long lVar17;
  long lVar18;
  double *pdVar19;
  ulong uVar20;
  double *pdVar21;
  undefined8 *puVar22;
  ulong uVar23;
  long lVar24;
  long lVar25;
  double *pdVar26;
  double *pdVar27;
  char *pcVar28;
  ulong uVar29;
  double *pdVar30;
  long lVar31;
  long lVar32;
  double *pdVar33;
  int iVar34;
  ulong uVar35;
  int iVar36;
  ulong uVar37;
  double dVar38;
  undefined1 auVar39 [16];
  double dVar40;
  double dVar41;
  double dVar42;
  double dVar43;
  double dVar44;
  double dVar45;
  double dVar46;
  double dVar47;
  double dVar48;
  double dVar49;
  double dVar50;
  undefined1 auVar51 [12];
  double local_190;
  double dStack_188;
  double local_180;
  double dStack_178;
  char *local_168;
  char *local_160;
  char *local_158;
  long local_150;
  long local_140;
  long local_130;
  long local_120;
  long local_110;
  long local_100;
  double *local_c8;
  char *local_c0;
  long local_b8 [2];
  undefined8 *local_a8;
  long local_a0;
  long local_98;
  long local_90;
  
  pvVar9 = (void *)tpidr_el0;
  local_90 = *(long *)((long)pvVar9 + 0x28);
  pdVar26 = *(double **)param_1;
  pdVar19 = *(double **)param_2;
  uVar37 = (*(long *)(param_1 + 8) - (long)pdVar26 >> 3) * -0x5555555555555555;
  iVar36 = (int)uVar37;
  if (iVar36 < 3 ||
      iVar36 != (int)((ulong)(*(long *)(param_2 + 8) - (long)pdVar19) >> 3) * -0x55555555) {
    uVar12 = 1;
  }
  else {
    dVar42 = 0.0;
    dVar43 = 0.0;
    dVar44 = 0.0;
    uVar29 = uVar37 & 0xffffffff;
    if (uVar29 < 2) {
      lVar24 = 0;
LAB_00748060:
      lVar25 = uVar29 - lVar24;
      pdVar13 = pdVar26 + lVar24 * 3 + 2;
      do {
        lVar25 = lVar25 + -1;
        dVar42 = dVar42 + pdVar13[-2];
        dVar43 = dVar43 + pdVar13[-1];
        dVar44 = dVar44 + *pdVar13;
        pdVar13 = pdVar13 + 3;
      } while (lVar25 != 0);
    }
    else {
      lVar24 = uVar29 - (uVar37 & 1);
      pdVar13 = pdVar26 + 3;
      lVar25 = lVar24;
      do {
        lVar25 = lVar25 + -2;
        dVar42 = dVar42 + pdVar13[-3] + *pdVar13;
        dVar43 = dVar43 + pdVar13[-2] + pdVar13[1];
        dVar44 = dVar44 + pdVar13[-1] + pdVar13[2];
        pdVar13 = pdVar13 + 6;
      } while (lVar25 != 0);
      if ((uVar37 & 1) != 0) goto LAB_00748060;
    }
    if ((uVar37 & 0xffffffff) == 0) {
      pdVar13 = (double *)0x0;
      pdVar14 = (double *)0x0;
    }
    else {
      uVar35 = (uVar37 & 0xffffffff) * 0x18;
                    /* try { // try from 007480a4 to 007480ab has its CatchHandler @ 007489e8 */
      pdVar13 = (double *)operator_new(uVar35);
                    /* try { // try from 007480ac to 007480b7 has its CatchHandler @ 007489d8 */
      pdVar14 = (double *)operator_new(uVar35);
    }
    dVar38 = (double)iVar36;
    dVar44 = dVar44 / dVar38;
    dVar45 = 0.0;
    dVar42 = dVar42 / dVar38;
    dVar43 = dVar43 / dVar38;
    local_190 = 0.0;
    dStack_188 = 0.0;
    dVar40 = 0.0;
    if (0 < iVar36) {
      if (uVar29 < 8) {
        lVar25 = 0;
LAB_00748100:
        lVar24 = uVar29 - lVar25;
        pdVar27 = pdVar14;
        pdVar21 = pdVar13;
        do {
          pdVar30 = pdVar26 + lVar25 * 3;
          pdVar33 = pdVar19 + lVar25 * 3;
          pdVar26 = pdVar26 + 3;
          dVar40 = *pdVar30;
          dVar41 = pdVar30[2];
          pdVar1 = pdVar21 + lVar25 * 3;
          lVar24 = lVar24 + -1;
          pdVar21 = pdVar21 + 3;
          pdVar19 = pdVar19 + 3;
          pdVar1[1] = pdVar30[1] - dVar43;
          *pdVar1 = dVar40 - dVar42;
          pdVar1[2] = dVar41 - dVar44;
          pdVar30 = pdVar27 + lVar25 * 3;
          pdVar27 = pdVar27 + 3;
          dVar40 = *pdVar33;
          dVar41 = pdVar33[2];
          pdVar30[1] = pdVar33[1];
          *pdVar30 = dVar40;
          pdVar30[2] = dVar41;
        } while (lVar24 != 0);
      }
      else {
        pdVar21 = pdVar13 + uVar29 * 3;
        pdVar27 = pdVar14 + uVar29 * 3;
        lVar25 = 0;
        if ((((pdVar14 < pdVar21 && pdVar13 < pdVar27) ||
             (pdVar13 < pdVar26 + uVar29 * 3 && pdVar26 < pdVar21)) ||
            (pdVar13 < pdVar19 + uVar29 * 3 && pdVar19 < pdVar21)) ||
           ((pdVar14 < pdVar26 + uVar29 * 3 && pdVar26 < pdVar27 ||
            (pdVar14 < pdVar19 + uVar29 * 3 && pdVar19 < pdVar27)))) goto LAB_00748100;
        lVar25 = uVar29 - (uVar37 & 1);
        pdVar21 = pdVar19;
        lVar24 = lVar25;
        pdVar27 = pdVar26;
        pdVar30 = pdVar13;
        pdVar33 = pdVar14;
        do {
          dVar40 = *pdVar27;
          dVar46 = pdVar27[1];
          dVar48 = pdVar27[2];
          dVar41 = pdVar27[3];
          dVar47 = pdVar27[4];
          dVar49 = pdVar27[5];
          pdVar27 = pdVar27 + 6;
          lVar24 = lVar24 + -2;
          *pdVar30 = dVar40 - dVar42;
          pdVar30[1] = dVar46 - dVar43;
          pdVar30[2] = dVar48 - dVar44;
          pdVar30[3] = dVar41 - dVar42;
          pdVar30[4] = dVar47 - dVar43;
          pdVar30[5] = dVar49 - dVar44;
          pdVar30 = pdVar30 + 6;
          dVar46 = pdVar21[2];
          dVar41 = pdVar21[5];
          dVar40 = pdVar21[4];
          dVar48 = pdVar21[1];
          dVar47 = *pdVar21;
          pdVar33[3] = pdVar21[3];
          pdVar33[2] = dVar46;
          pdVar33[5] = dVar41;
          pdVar33[4] = dVar40;
          pdVar33[1] = dVar48;
          *pdVar33 = dVar47;
          pdVar21 = pdVar21 + 6;
          pdVar33 = pdVar33 + 6;
        } while (lVar24 != 0);
        if ((uVar37 & 1) != 0) goto LAB_00748100;
      }
      local_190 = 0.0;
      dStack_188 = 0.0;
      dVar40 = 0.0;
      if (0 < iVar36) {
        pdVar26 = pdVar14 + 2;
        uVar37 = uVar29;
        do {
          uVar37 = uVar37 - 1;
          local_190 = local_190 + pdVar26[-2];
          dStack_188 = dStack_188 + pdVar26[-1];
          dVar40 = dVar40 + *pdVar26;
          pdVar26 = pdVar26 + 3;
        } while (uVar37 != 0);
      }
    }
    dVar41 = DAT_00398118;
    dVar40 = dVar40 / dVar38;
    uVar10 = iVar36 * 3;
    auVar39 = NEON_fmov(0x3ff0000000000000,8);
    dVar46 = 0.0;
    lVar25 = (long)(int)uVar10;
    iVar34 = 0;
    local_190 = local_190 / dVar38;
    dStack_188 = dStack_188 / dVar38;
    dStack_178 = 0.0;
    local_180 = 0.0;
    do {
      local_a8 = (undefined8 *)0x0;
      local_a0 = 0;
      local_98 = 0;
                    /* try { // try from 00748204 to 00748217 has its CatchHandler @ 00748a14 */
      Eigen::DenseStorage<double,-1,-1,-1,0>::resize
                ((DenseStorage<double,_1,_1,_1,0> *)&local_a8,
                 (-(ulong)(uVar10 >> 0x1f) & 0xfffffff800000000 | (ulong)uVar10 << 3) - lVar25,
                 lVar25,7);
      local_b8[0] = 0;
      local_b8[1] = 0;
                    /* try { // try from 0074821c to 0074822f has its CatchHandler @ 00748a28 */
      Eigen::DenseStorage<double,-1,-1,1,0>::resize((long)local_b8,lVar25,lVar25);
      if (0 < iVar36) {
        bVar11 = local_98 == 1;
        lVar24 = 1;
        if (!bVar11) {
          lVar24 = 2;
        }
        uVar37 = (ulong)bVar11;
        lVar31 = 0;
        if (!bVar11) {
          lVar31 = local_a0;
        }
        uVar35 = 1;
        if (bVar11) {
          uVar35 = 2;
        }
        lVar32 = 0;
        if (lVar24 != local_98) {
          uVar35 = uVar37;
          lVar32 = lVar24;
        }
        dVar38 = dVar45 + 1.0;
        lVar24 = 0;
        if (lVar32 + 1 == local_98) {
          uVar3 = uVar35 + 1;
        }
        else {
          lVar24 = lVar32 + 1;
          uVar3 = uVar35;
        }
        lVar32 = lVar32 * local_a0;
        lVar17 = 0;
        if (lVar24 + 1 == local_98) {
          uVar4 = uVar3 + 1;
        }
        else {
          lVar17 = lVar24 + 1;
          uVar4 = uVar3;
        }
        lVar24 = lVar24 * local_a0;
        lVar15 = lVar17 * local_a0;
        dVar47 = -dVar38;
        lVar8 = 0;
        if (lVar17 + 1 == local_98) {
          uVar5 = uVar4 + 1;
        }
        else {
          lVar8 = lVar17 + 1;
          uVar5 = uVar4;
        }
        lVar18 = lVar8 * local_a0;
        bVar11 = lVar8 + 1 == local_98;
        lVar17 = 0;
        if (!bVar11) {
          lVar17 = lVar8 + 1;
        }
        uVar20 = (ulong)bVar11;
        lVar17 = lVar17 * local_a0;
        pdVar26 = (double *)(local_b8[0] + 8);
        pdVar19 = pdVar13 + 1;
        pdVar21 = pdVar14 + 2;
        puVar22 = local_a8;
        uVar23 = uVar29;
        do {
          dVar48 = pdVar19[-1];
          dVar50 = *pdVar19;
          bVar11 = local_a8 != (undefined8 *)0x0;
          dVar49 = pdVar19[1];
          puVar7 = (undefined8 *)0x0;
          if (bVar11) {
            puVar7 = puVar22;
          }
          pdVar19 = pdVar19 + 3;
          pdVar26[-1] = pdVar21[-2] -
                        (local_190 +
                        dVar38 * 1.0 * dVar48 + -dStack_178 * dVar38 * dVar50 +
                        local_180 * dVar38 * dVar49);
          *pdVar26 = pdVar21[-1] -
                     (dStack_188 +
                     dStack_178 * dVar38 * dVar48 + auVar39._8_8_ * dVar38 * dVar50 +
                     -dVar46 * dVar38 * dVar49);
          pdVar26[1] = *pdVar21 -
                       (dVar40 + dVar48 * dVar38 * -local_180 +
                                 dVar50 * dVar38 * dVar46 + dVar49 * dVar38);
          *puVar7 = 0x3ff0000000000000;
          pdVar26 = pdVar26 + 3;
          puVar7[lVar31 + uVar37] = 0;
          puVar7[lVar32 + uVar35] = 0;
          puVar7[lVar24 + uVar3] = 0;
          puVar7[lVar15 + uVar4] = dVar49 * dVar38;
          puVar7[lVar18 + uVar5] = dVar50 * dVar47;
          puVar6 = (undefined8 *)0x0;
          if (bVar11) {
            puVar6 = puVar22 + 1;
          }
          puVar7[lVar17 + uVar5 + uVar20] = dVar48 + dVar50 * -dStack_178 + dVar49 * local_180;
          *puVar6 = 0;
          puVar6[lVar31 + uVar37] = 0x3ff0000000000000;
          puVar6[lVar32 + uVar35] = 0;
          puVar6[lVar24 + uVar3] = dVar49 * dVar47;
          puVar6[lVar15 + uVar4] = 0;
          puVar6[lVar18 + uVar5] = dVar38 * dVar48;
          puVar7 = (undefined8 *)0x0;
          if (bVar11) {
            puVar7 = puVar22 + 2;
          }
          puVar6[lVar17 + uVar5 + uVar20] = dVar50 + dVar48 * dStack_178 + dVar49 * -dVar46;
          *puVar7 = 0;
          puVar7[lVar31 + uVar37] = 0;
          puVar7[lVar32 + uVar35] = 0x3ff0000000000000;
          uVar23 = uVar23 - 1;
          puVar7[lVar24 + uVar3] = dVar38 * dVar50;
          puVar7[lVar15 + uVar4] = dVar48 * dVar47;
          puVar22 = puVar22 + 3;
          puVar7[lVar18 + uVar5] = 0;
          puVar7[lVar17 + uVar5 + uVar20] = dVar49 + dVar46 * dVar50 + dVar48 * -local_180;
          pdVar21 = pdVar21 + 3;
        } while (uVar23 != 0);
      }
                    /* try { // try from 007484a8 to 007484b3 has its CatchHandler @ 00748a3c */
      Eigen::ColPivHouseholderQR<Eigen::Matrix<double,-1,-1,0,-1,-1>>::
      ColPivHouseholderQR<Eigen::Matrix<double,_1,_1,0,_1,_1>>
                ((ColPivHouseholderQR<Eigen::Matrix<double,_1,_1,0,_1,_1>> *)&local_168,
                 (EigenBase *)&local_a8);
      local_c8 = (double *)0x0;
      local_c0 = (char *)0x0;
                    /* try { // try from 007484bc to 007484fb has its CatchHandler @ 00748a48 */
      Eigen::DenseStorage<double,-1,-1,1,0>::resize((long)&local_c8,(long)local_158,(long)local_158)
      ;
      if (local_c0 != local_158) {
        Eigen::DenseStorage<double,-1,-1,1,0>::resize
                  ((long)&local_c8,(long)local_158,(long)local_158);
      }
      Eigen::ColPivHouseholderQR<Eigen::Matrix<double,-1,-1,0,-1,-1>>::
      _solve_impl<Eigen::Matrix<double,_1,1,0,_1,1>,Eigen::Matrix<double,_1,1,0,_1,1>>
                ((ColPivHouseholderQR<Eigen::Matrix<double,_1,_1,0,_1,_1>> *)&local_168,
                 (Matrix *)local_b8,(Matrix *)&local_c8);
      if (local_100 != 0) {
        free(*(void **)(local_100 + -8));
      }
      if (local_110 != 0) {
        free(*(void **)(local_110 + -8));
      }
      if (local_120 != 0) {
        free(*(void **)(local_120 + -8));
      }
      if (local_130 != 0) {
        free(*(void **)(local_130 + -8));
      }
      if (local_140 != 0) {
        free(*(void **)(local_140 + -8));
      }
      if (local_150 != 0) {
        free(*(void **)(local_150 + -8));
      }
      if (local_168 != (char *)0x0) {
        free(*(void **)(local_168 + -8));
      }
      dVar38 = *local_c8;
      dVar47 = local_c8[1];
      dVar48 = local_c8[2];
      local_190 = local_190 + dVar38;
      dStack_188 = dStack_188 + dVar47;
      dVar40 = dVar40 + dVar48;
      dVar46 = dVar46 + local_c8[3];
      dVar45 = dVar45 + local_c8[6];
      local_180 = local_180 + local_c8[4];
      dStack_178 = dStack_178 + local_c8[5];
      if ((SQRT(dVar38 * dVar38 + dVar47 * dVar47 + dVar48 * dVar48) < dVar41) &&
         (SQRT(local_c8[(long)(local_c0 + -4)] * local_c8[(long)(local_c0 + -4)] +
               local_c8[(long)(local_c0 + -2)] * local_c8[(long)(local_c0 + -2)] +
               local_c8[(long)(local_c0 + -3)] * local_c8[(long)(local_c0 + -3)] +
               local_c8[(long)(local_c0 + -1)] * local_c8[(long)(local_c0 + -1)]) < DAT_00398458)) {
        free((void *)local_c8[-1]);
        if (local_b8[0] != 0) {
          free(*(void **)(local_b8[0] + -8));
        }
        if (local_a8 != (undefined8 *)0x0) {
          free((void *)local_a8[-1]);
        }
        break;
      }
      free((void *)local_c8[-1]);
      if (local_b8[0] != 0) {
        free(*(void **)(local_b8[0] + -8));
      }
      if (local_a8 != (undefined8 *)0x0) {
        free((void *)local_a8[-1]);
      }
      iVar34 = iVar34 + 1;
    } while (iVar34 != 0x14);
    dVar45 = dVar45 + 1.0;
    *(double *)(param_3 + 0x28) = dStack_178;
    *(double *)(param_3 + 0x20) = local_180;
    *(double *)(param_3 + 0x30) = dVar45;
    dVar38 = auVar39._8_8_ * dVar45;
    dVar40 = dVar40 - (-(local_180 * dVar45) * dVar42 + dVar45 * dVar46 * dVar43 + dVar44 * dVar45);
    *(double *)(param_3 + 0x10) = dVar40;
    *(double *)(param_3 + 0x18) = dVar46;
    *(double *)(param_3 + 8) =
         dStack_188 - (dStack_178 * dVar45 * dVar42 + dVar38 * dVar43 + -dVar46 * dVar45 * dVar44);
    *(double *)param_3 =
         local_190 -
         (dVar45 * 1.0 * dVar42 + -dStack_178 * dVar45 * dVar43 + local_180 * dVar45 * dVar44);
    if (param_4 != (ResidualError *)0x0) {
      local_168 = (char *)0x0;
      local_160 = (char *)0x0;
      local_158 = (char *)0x0;
      lVar25 = *(long *)param_1;
      uVar37 = (*(long *)(param_1 + 8) - lVar25 >> 3) * -0x5555555555555555;
      iVar36 = (int)uVar37;
      if ((uVar37 & 0xffffffff) == 0) {
        if (iVar36 < 1) goto LAB_0074896c;
        __s = (char *)0x0;
LAB_00748850:
        uVar29 = uVar37 & 0xffffffff;
        dVar42 = *(double *)param_3;
        dVar43 = *(double *)(param_3 + 8);
        lVar24 = 0;
        do {
          pdVar26 = (double *)(lVar25 + lVar24);
          dVar44 = *pdVar26;
          dVar41 = pdVar26[1];
          dVar47 = pdVar26[2];
          pdVar26 = (double *)(__s + lVar24);
          lVar24 = lVar24 + 0x18;
          pdVar26[1] = dVar43 + dStack_178 * dVar45 * dVar44 + dVar38 * dVar41 +
                                -dVar46 * dVar45 * dVar47;
          *pdVar26 = dVar42 + dVar45 * 1.0 * dVar44 + -dStack_178 * dVar45 * dVar41 +
                              local_180 * dVar45 * dVar47;
          pdVar26[2] = dVar40 + dVar44 * -(local_180 * dVar45) +
                                dVar47 * dVar45 + dVar41 * dVar45 * dVar46;
        } while ((uVar29 + (uVar37 & 0xffffffff) * 2) * 8 - lVar24 != 0);
        lVar25 = *(long *)param_2;
        if (uVar29 < 2) {
          lVar32 = 0;
        }
        else {
          lVar24 = 0;
          lVar32 = uVar29 - (uVar37 & 1);
          lVar31 = lVar32;
          do {
            pdVar26 = (double *)(lVar25 + lVar24);
            pdVar19 = (double *)(__s + lVar24);
            lVar31 = lVar31 + -2;
            dVar43 = pdVar26[1];
            dVar38 = pdVar26[2];
            dVar42 = pdVar26[3];
            dVar44 = pdVar26[4];
            dVar40 = pdVar26[5];
            dVar41 = pdVar19[1];
            dVar47 = pdVar19[2];
            dVar45 = pdVar19[3];
            dVar46 = pdVar19[4];
            dVar48 = pdVar19[5];
            pRVar2 = param_4 + lVar24;
            lVar24 = lVar24 + 0x30;
            *(double *)pRVar2 = *pdVar26 - *pdVar19;
            *(double *)(pRVar2 + 8) = dVar43 - dVar41;
            *(double *)(pRVar2 + 0x10) = dVar38 - dVar47;
            *(double *)(pRVar2 + 0x18) = dVar42 - dVar45;
            *(double *)(pRVar2 + 0x20) = dVar44 - dVar46;
            *(double *)(pRVar2 + 0x28) = dVar40 - dVar48;
          } while (lVar31 != 0);
          if ((uVar37 & 1) == 0) goto LAB_0074895c;
        }
        lVar24 = uVar29 - lVar32;
        lVar32 = lVar32 * 0x18;
        pcVar28 = __s;
        do {
          pdVar26 = (double *)(lVar25 + lVar32);
          pdVar19 = (double *)(pcVar28 + lVar32);
          pRVar2 = param_4 + lVar32;
          dVar42 = *pdVar26;
          dVar43 = *pdVar19;
          lVar24 = lVar24 + -1;
          param_4 = param_4 + 0x18;
          lVar25 = lVar25 + 0x18;
          pcVar28 = pcVar28 + 0x18;
          *(double *)(pRVar2 + 8) = pdVar26[1] - pdVar19[1];
          *(double *)pRVar2 = dVar42 - dVar43;
          *(double *)(pRVar2 + 0x10) = pdVar26[2] - pdVar19[2];
        } while (lVar24 != 0);
      }
      else {
        if (0xaaaaaaaaaaaaaaa < (ulong)(long)iVar36) {
          if (*(long *)((long)pvVar9 + 0x28) != local_90) goto LAB_00748b50;
                    /* try { // try from 007489d0 to 007489d7 has its CatchHandler @ 007489f4 */
          auVar51 = FUN_00749500(&local_168);
                    /* catch(type#1 @ 00d6cfa0) { ... } // from try @ 007480ac with catch @ 007489d8
                        */
          operator_delete(pvVar9);
          if (auVar51._8_4_ != 1) {
            if (*(long *)((long)pvVar9 + 0x28) == local_90) {
                    /* WARNING: Subroutine does not return */
              FUN_00cc2efc(auVar51._0_8_);
            }
            goto LAB_00748b50;
          }
          plVar16 = (long *)__cxa_begin_catch(auVar51._0_8_);
                    /* try { // try from 00748abc to 00748abf has its CatchHandler @ 00748b2c */
          uVar12 = spdlog::default_logger_raw();
          local_a8 = (undefined8 *)(**(code **)(*plVar16 + 0x10))(plVar16);
          local_168 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/gnss/gnss_param_transform.cpp"
          ;
          local_160 = (char *)CONCAT44(local_160._4_4_,0xeb);
          local_158 = "ComputeSevenParameters";
                    /* try { // try from 00748af8 to 00748b17 has its CatchHandler @ 00748b28 */
          spdlog::logger::log_<char_const*>
                    (uVar12,&local_168,3,"ComputeSevenParameters failed: {}",0x21,&local_a8);
          __cxa_end_catch();
          uVar12 = 2;
          goto LAB_00748988;
        }
        uVar29 = (long)iVar36 * 0x18;
                    /* try { // try from 00748728 to 0074872f has its CatchHandler @ 007489f4 */
        __s = (char *)operator_new(uVar29);
        local_158 = __s + (long)iVar36 * 0x18;
        local_168 = __s;
        memset(__s,0,((uVar29 - 0x18) / 0x18) * 0x18 + 0x18);
        if (0 < iVar36) goto LAB_00748850;
      }
LAB_0074895c:
      local_160 = __s;
      operator_delete(__s);
    }
LAB_0074896c:
    if (pdVar14 != (double *)0x0) {
      operator_delete(pdVar14);
    }
    if (pdVar13 != (double *)0x0) {
      operator_delete(pdVar13);
    }
    uVar12 = 0;
  }
LAB_00748988:
  if (*(long *)((long)pvVar9 + 0x28) == local_90) {
    return uVar12;
  }
LAB_00748b50:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

