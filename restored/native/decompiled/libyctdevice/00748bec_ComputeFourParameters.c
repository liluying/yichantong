/* Artifact: libyctdevice.so | Address: 00748bec | Ghidra static pseudocode; types require review. */

/* gnss_trans::GnssParamTransform::ComputeFourParameters(std::__ndk1::vector<gnss_trans::Point3D,
   std::__ndk1::allocator<gnss_trans::Point3D> > const&, std::__ndk1::vector<gnss_trans::Point3D,
   std::__ndk1::allocator<gnss_trans::Point3D> > const&, gnss_trans::FourParameter&,
   gnss_trans::ResidualError*) */

undefined8
gnss_trans::GnssParamTransform::ComputeFourParameters
          (vector *param_1,vector *param_2,FourParameter *param_3,ResidualError *param_4)

{
  double *pdVar1;
  long lVar2;
  double *pdVar3;
  double *pdVar4;
  double *pdVar5;
  double *pdVar6;
  ResidualError *pRVar7;
  int iVar8;
  undefined8 uVar9;
  double *pdVar10;
  long *plVar11;
  long lVar12;
  long lVar13;
  double *pdVar14;
  double *pdVar15;
  double *pdVar16;
  double *pdVar17;
  ulong uVar18;
  ulong uVar19;
  ulong uVar20;
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
  double dVar31;
  double dVar32;
  undefined1 auVar33 [12];
  double local_c0;
  double dStack_b8;
  double local_b0;
  char *local_a8;
  undefined4 local_a0;
  char *local_98;
  char *local_90;
  undefined8 local_88;
  char *local_80;
  long local_78;
  
  lVar2 = tpidr_el0;
  local_78 = *(long *)(lVar2 + 0x28);
  pdVar15 = *(double **)param_1;
  pdVar17 = *(double **)param_2;
  uVar20 = (*(long *)(param_1 + 8) - (long)pdVar15 >> 3) * -0x5555555555555555;
  iVar8 = (int)uVar20;
  if (iVar8 < 2 ||
      iVar8 != (int)((ulong)(*(long *)(param_2 + 8) - (long)pdVar17) >> 3) * -0x55555555) {
LAB_00748dd8:
    uVar9 = 1;
  }
  else {
    dVar21 = 0.0;
    dVar23 = 0.0;
    dVar25 = 0.0;
    dVar27 = 0.0;
    uVar19 = uVar20 & 0xffffffff;
    if (uVar19 < 2) {
      lVar12 = 0;
LAB_00748cbc:
      lVar13 = uVar19 - lVar12;
      pdVar10 = pdVar15 + lVar12 * 3;
      pdVar14 = pdVar17 + lVar12 * 3;
      do {
        lVar13 = lVar13 + -1;
        dVar25 = dVar25 + *pdVar10;
        dVar27 = dVar27 + pdVar10[1];
        dVar21 = dVar21 + *pdVar14;
        dVar23 = dVar23 + pdVar14[1];
        pdVar10 = pdVar10 + 3;
        pdVar14 = pdVar14 + 3;
      } while (lVar13 != 0);
    }
    else {
      lVar12 = uVar19 - (uVar20 & 1);
      lVar13 = lVar12;
      pdVar14 = pdVar17;
      pdVar10 = pdVar15;
      do {
        pdVar3 = pdVar10 + 1;
        dVar28 = *pdVar10;
        pdVar5 = pdVar14 + 1;
        dVar26 = *pdVar14;
        lVar13 = lVar13 + -2;
        pdVar16 = pdVar10 + 3;
        pdVar4 = pdVar10 + 4;
        pdVar1 = pdVar14 + 3;
        pdVar6 = pdVar14 + 4;
        pdVar10 = pdVar10 + 6;
        pdVar14 = pdVar14 + 6;
        dVar25 = dVar25 + dVar28 + *pdVar16;
        dVar27 = dVar27 + *pdVar3 + *pdVar4;
        dVar21 = dVar21 + dVar26 + *pdVar1;
        dVar23 = dVar23 + *pdVar5 + *pdVar6;
      } while (lVar13 != 0);
      if ((uVar20 & 1) != 0) goto LAB_00748cbc;
    }
    local_b0 = 0.0;
    if (iVar8 < 1) {
LAB_00748d80:
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar8 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar8 != 0)) {
                    /* try { // try from 007490c0 to 007490cb has its CatchHandler @ 00749110 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_a8 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/gnss/gnss_param_transform.cpp";
      local_a0 = 0x11e;
      local_98 = "ComputeFourParameters";
                    /* try { // try from 00748dbc to 00748dd7 has its CatchHandler @ 00749148 */
      spdlog::logger::log_<double&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_a8,3,
                 "ComputeFourParameters failed: degenerate source points (denom={})",0x41,&local_b0)
      ;
      goto LAB_00748dd8;
    }
    dVar29 = (double)iVar8;
    lVar13 = 0;
    dVar25 = dVar25 / dVar29;
    dVar27 = dVar27 / dVar29;
    local_b0 = 0.0;
    dVar26 = 0.0;
    dVar28 = 0.0;
    do {
      pdVar14 = (double *)((long)pdVar17 + lVar13);
      pdVar10 = (double *)((long)pdVar15 + lVar13);
      lVar13 = lVar13 + 0x18;
      dVar22 = *pdVar14 - dVar21 / dVar29;
      dVar24 = pdVar14[1] - dVar23 / dVar29;
      dVar31 = pdVar10[1] - dVar27;
      dVar30 = *pdVar10 - dVar25;
      local_b0 = local_b0 + dVar31 * dVar31 + dVar30 * dVar30;
      dVar26 = dVar26 + dVar24 * dVar31 + dVar22 * dVar30;
      dVar28 = dVar28 + -dVar22 * dVar31 + dVar24 * dVar30;
    } while (uVar19 * 0x18 - lVar13 != 0);
    if (local_b0 < DAT_003981b0) goto LAB_00748d80;
    dVar26 = dVar26 / local_b0;
    dVar28 = dVar28 / local_b0;
    dVar22 = SQRT(dVar28 * dVar28 + dVar26 * dVar26);
    *(double *)(param_3 + 0x18) = dVar22;
    dVar28 = atan2(dVar28,dVar26);
    *(double *)(param_3 + 0x10) = dVar28;
    sincos(dVar28,&dStack_b8,&local_c0);
    dVar21 = dVar21 / dVar29 - (-(dVar27 * dStack_b8) + local_c0 * dVar25) * dVar22;
    dVar23 = dVar23 / dVar29 - (dVar27 * local_c0 + dStack_b8 * dVar25) * dVar22;
    *(double *)param_3 = dVar21;
    *(double *)(param_3 + 8) = dVar23;
    if (param_4 == (ResidualError *)0x0) {
LAB_007490a8:
      uVar9 = 0;
    }
    else {
      local_90 = (char *)0x0;
      local_88 = 0;
      local_80 = (char *)0x0;
      if ((uVar20 & 0xffffffff) == 0) {
        pdVar10 = (double *)0x0;
        if (uVar19 < 7) goto LAB_00748efc;
LAB_00748f14:
        lVar13 = 0;
        if ((pdVar10 + uVar19 * 3 + -2 <= pdVar15 || pdVar15 + uVar19 * 3 + -2 <= pdVar10) &&
           (pdVar15 + uVar19 * 3 + -1 <= pdVar10 + 1 || pdVar10 + uVar19 * 3 + -1 <= pdVar15 + 1)) {
          uVar18 = 2;
          if ((uVar20 & 1) != 0) {
            uVar18 = uVar20 & 1;
          }
          lVar13 = uVar19 - uVar18;
          lVar12 = lVar13;
          pdVar16 = pdVar15;
          pdVar14 = pdVar10;
          do {
            dVar25 = *pdVar16;
            dVar28 = pdVar16[1];
            dVar27 = pdVar16[3];
            dVar26 = pdVar16[4];
            pdVar16 = pdVar16 + 6;
            lVar12 = lVar12 + -2;
            pdVar14[1] = dVar23 + (dVar28 * local_c0 + dStack_b8 * dVar25) * dVar22;
            *pdVar14 = dVar21 + (-dVar28 * dStack_b8 + local_c0 * dVar25) * dVar22;
            pdVar14[4] = dVar23 + (dVar26 * local_c0 + dStack_b8 * dVar27) * dVar22;
            pdVar14[3] = dVar21 + (-dVar26 * dStack_b8 + local_c0 * dVar27) * dVar22;
            pdVar14 = pdVar14 + 6;
          } while (lVar12 != 0);
        }
LAB_00748fc8:
        lVar12 = uVar19 - lVar13;
        lVar13 = lVar13 * 0x18;
        do {
          lVar12 = lVar12 + -1;
          dVar27 = *(double *)((long)pdVar15 + lVar13);
          dVar25 = ((double *)((long)pdVar15 + lVar13))[1];
          pdVar14 = (double *)((long)pdVar10 + lVar13);
          lVar13 = lVar13 + 0x18;
          *pdVar14 = dVar21 + (-(dVar25 * dStack_b8) + local_c0 * dVar27) * dVar22;
          pdVar14[1] = dVar23 + (local_c0 * dVar25 + dStack_b8 * dVar27) * dVar22;
        } while (lVar12 != 0);
        if (0 < iVar8) {
          if (uVar19 < 2) {
            lVar12 = 0;
          }
          else {
            lVar12 = uVar19 - (uVar20 & 1);
            lVar13 = lVar12;
            pdVar15 = pdVar10;
            pdVar14 = pdVar17;
            pRVar7 = param_4;
            do {
              dVar21 = *pdVar14;
              dVar25 = pdVar14[1];
              dVar28 = pdVar14[2];
              dVar23 = pdVar14[3];
              dVar27 = pdVar14[4];
              dVar26 = pdVar14[5];
              pdVar14 = pdVar14 + 6;
              lVar13 = lVar13 + -2;
              dVar29 = *pdVar15;
              dVar24 = pdVar15[1];
              dVar31 = pdVar15[2];
              dVar22 = pdVar15[3];
              dVar30 = pdVar15[4];
              dVar32 = pdVar15[5];
              pdVar15 = pdVar15 + 6;
              *(double *)pRVar7 = dVar21 - dVar29;
              *(double *)(pRVar7 + 8) = dVar25 - dVar24;
              *(double *)(pRVar7 + 0x10) = dVar28 - dVar31;
              *(double *)(pRVar7 + 0x18) = dVar23 - dVar22;
              *(double *)(pRVar7 + 0x20) = dVar27 - dVar30;
              *(double *)(pRVar7 + 0x28) = dVar26 - dVar32;
              pRVar7 = pRVar7 + 0x30;
            } while (lVar13 != 0);
            if ((uVar20 & 1) == 0) goto LAB_007490a0;
          }
          lVar13 = uVar19 - lVar12;
          pRVar7 = param_4 + lVar12 * 0x18 + 0x10;
          pdVar15 = pdVar17 + lVar12 * 3 + 2;
          pdVar17 = pdVar10 + lVar12 * 3 + 2;
          do {
            dVar21 = pdVar15[-2];
            dVar23 = pdVar17[-2];
            lVar13 = lVar13 + -1;
            *(double *)(pRVar7 + -8) = pdVar15[-1] - pdVar17[-1];
            *(double *)(pRVar7 + -0x10) = dVar21 - dVar23;
            *(double *)pRVar7 = *pdVar15 - *pdVar17;
            pRVar7 = pRVar7 + 0x18;
            pdVar15 = pdVar15 + 3;
            pdVar17 = pdVar17 + 3;
          } while (lVar13 != 0);
        }
LAB_007490a0:
        operator_delete(pdVar10);
        goto LAB_007490a8;
      }
      if ((ulong)(long)iVar8 < 0xaaaaaaaaaaaaaab) {
        uVar18 = (long)iVar8 * 0x18;
                    /* try { // try from 00748eb0 to 00748eb7 has its CatchHandler @ 00749128 */
        pdVar10 = (double *)operator_new(uVar18);
        memset(pdVar10,0,((uVar18 - 0x18) / 0x18) * 0x18 + 0x18);
        if (6 < uVar19) goto LAB_00748f14;
LAB_00748efc:
        lVar13 = 0;
        goto LAB_00748fc8;
      }
      if (*(long *)(lVar2 + 0x28) != local_78) goto LAB_007491f0;
                    /* try { // try from 00749108 to 0074910f has its CatchHandler @ 00749128 */
      auVar33 = FUN_00749500(&local_90);
                    /* catch(type#1 @ 00d6cfa0) { ... } // from try @ 007490c0 with catch @ 00749110
                        */
      __cxa_guard_abort(PTR_s_instance_00d70cb0);
      if (auVar33._8_4_ != 1) {
        if (*(long *)(lVar2 + 0x28) == local_78) {
                    /* WARNING: Subroutine does not return */
          FUN_00cc2efc(auVar33._0_8_);
        }
        goto LAB_007491f0;
      }
      plVar11 = (long *)__cxa_begin_catch(auVar33._0_8_);
                    /* try { // try from 00749164 to 00749167 has its CatchHandler @ 007491d0 */
      uVar9 = spdlog::default_logger_raw();
      local_b0 = (double)(**(code **)(*plVar11 + 0x10))(plVar11);
      local_90 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/gnss/gnss_param_transform.cpp";
      local_88 = CONCAT44(local_88._4_4_,0x13c);
      local_80 = "ComputeFourParameters";
                    /* try { // try from 007491a0 to 007491bf has its CatchHandler @ 007491cc */
      spdlog::logger::log_<char_const*>
                (uVar9,&local_90,3,"ComputeFourParameters failed: {}",0x20,&local_b0);
      __cxa_end_catch();
      uVar9 = 2;
    }
  }
  if (*(long *)(lVar2 + 0x28) == local_78) {
    return uVar9;
  }
LAB_007491f0:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

