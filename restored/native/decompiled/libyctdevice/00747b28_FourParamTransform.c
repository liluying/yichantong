/* Artifact: libyctdevice.so | Address: 00747b28 | Ghidra static pseudocode; types require review. */

/* gnss_trans::GnssParamTransform::FourParamTransform(gnss_trans::FourParameter const&,
   std::__ndk1::vector<gnss_trans::Point3D, std::__ndk1::allocator<gnss_trans::Point3D> > const&,
   std::__ndk1::vector<gnss_trans::Point3D, std::__ndk1::allocator<gnss_trans::Point3D> >&, bool) */

void gnss_trans::GnssParamTransform::FourParamTransform
               (FourParameter *param_1,vector *param_2,vector *param_3,bool param_4)

{
  ulong uVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  double *pdVar5;
  ulong uVar6;
  long lVar7;
  double *pdVar8;
  ulong uVar9;
  long lVar10;
  double *pdVar11;
  double *pdVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  double dVar20;
  double dVar21;
  double local_90;
  double adStack_88 [2];
  char *local_78;
  undefined4 local_70;
  char *local_68;
  long local_48;
  
  lVar2 = tpidr_el0;
  local_48 = *(long *)(lVar2 + 0x28);
  sincos(*(double *)(param_1 + 0x10),adStack_88,&local_90);
  pdVar5 = *(double **)param_2;
  uVar9 = (*(long *)(param_2 + 8) - (long)pdVar5 >> 3) * -0x5555555555555555;
  if (param_4) {
    if (*(double *)(param_1 + 0x18) == 0.0) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00747e90 to 00747e9b has its CatchHandler @ 00747ec8 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_78 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/gnss/gnss_param_transform.cpp";
      local_70 = 0x57;
      local_68 = "FourParamTransform";
                    /* try { // try from 00747bd4 to 00747beb has its CatchHandler @ 00747ee0 */
      spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_78,3,
                          "FourParamTransform inverse failed: scale is zero",0x30);
      uVar4 = 1;
      goto LAB_00747e58;
    }
    if (0 < (int)uVar9) {
      uVar6 = uVar9 & 0xffffffff;
      pdVar8 = *(double **)param_3;
      dVar13 = 1.0 / *(double *)(param_1 + 0x18);
      dVar14 = *(double *)param_1;
      dVar15 = *(double *)(param_1 + 8);
      if (uVar6 < 7) {
        lVar10 = 0;
      }
      else {
        lVar10 = 0;
        if ((pdVar8 + uVar6 * 3 + -2 <= pdVar5 || pdVar5 + uVar6 * 3 + -2 <= pdVar8) &&
           (pdVar5 + uVar6 * 3 + -1 <= pdVar8 + 1 || pdVar8 + uVar6 * 3 + -1 <= pdVar5 + 1)) {
          uVar1 = 2;
          if ((uVar9 & 1) != 0) {
            uVar1 = uVar9 & 1;
          }
          lVar10 = uVar6 - uVar1;
          lVar7 = lVar10;
          pdVar11 = pdVar5;
          pdVar12 = pdVar8;
          do {
            dVar16 = *pdVar11;
            dVar18 = pdVar11[1];
            dVar17 = pdVar11[3];
            dVar19 = pdVar11[4];
            pdVar11 = pdVar11 + 6;
            lVar7 = lVar7 + -2;
            dVar20 = (dVar18 - dVar15) * local_90;
            dVar21 = (dVar19 - dVar15) * local_90;
            pdVar12[1] = (dVar20 - adStack_88[0] * dVar20) * dVar13;
            *pdVar12 = ((dVar18 - dVar15) * adStack_88[0] + local_90 * (dVar16 - dVar14)) * dVar13;
            pdVar12[4] = (dVar21 - adStack_88[0] * dVar21) * dVar13;
            pdVar12[3] = ((dVar19 - dVar15) * adStack_88[0] + local_90 * (dVar17 - dVar14)) * dVar13
            ;
            pdVar12 = pdVar12 + 6;
          } while (lVar7 != 0);
        }
      }
      lVar7 = uVar6 - lVar10;
      pdVar5 = pdVar5 + lVar10 * 3 + 1;
      pdVar8 = pdVar8 + lVar10 * 3 + 1;
      do {
        dVar17 = pdVar5[-1];
        dVar16 = *pdVar5;
        lVar7 = lVar7 + -1;
        pdVar5 = pdVar5 + 3;
        pdVar8[-1] = dVar13 * (adStack_88[0] * (dVar16 - dVar15) + local_90 * (dVar17 - dVar14));
        *pdVar8 = dVar13 * (local_90 * (dVar16 - dVar15) - adStack_88[0] * (dVar17 - dVar14));
        pdVar8 = pdVar8 + 3;
      } while (lVar7 != 0);
    }
  }
  else if (0 < (int)uVar9) {
    dVar14 = *(double *)param_1;
    dVar15 = *(double *)(param_1 + 8);
    uVar6 = uVar9 & 0xffffffff;
    dVar13 = *(double *)(param_1 + 0x18);
    pdVar8 = *(double **)param_3;
    if (uVar6 < 7) {
      lVar10 = 0;
    }
    else {
      lVar10 = 0;
      if ((pdVar8 + uVar6 * 3 + -2 <= pdVar5 || pdVar5 + uVar6 * 3 + -2 <= pdVar8) &&
         (pdVar5 + uVar6 * 3 + -1 <= pdVar8 + 1 || pdVar8 + uVar6 * 3 + -1 <= pdVar5 + 1)) {
        uVar1 = 2;
        if ((uVar9 & 1) != 0) {
          uVar1 = uVar9 & 1;
        }
        lVar10 = uVar6 - uVar1;
        lVar7 = lVar10;
        pdVar11 = pdVar5;
        pdVar12 = pdVar8;
        do {
          dVar16 = *pdVar11;
          dVar18 = pdVar11[1];
          dVar17 = pdVar11[3];
          dVar19 = pdVar11[4];
          pdVar11 = pdVar11 + 6;
          lVar7 = lVar7 + -2;
          pdVar12[1] = dVar15 + (dVar18 * local_90 + adStack_88[0] * dVar16) * dVar13;
          *pdVar12 = dVar14 + (-dVar18 * adStack_88[0] + local_90 * dVar16) * dVar13;
          pdVar12[4] = dVar15 + (dVar19 * local_90 + adStack_88[0] * dVar17) * dVar13;
          pdVar12[3] = dVar14 + (-dVar19 * adStack_88[0] + local_90 * dVar17) * dVar13;
          pdVar12 = pdVar12 + 6;
        } while (lVar7 != 0);
      }
    }
    lVar7 = uVar6 - lVar10;
    pdVar5 = pdVar5 + lVar10 * 3;
    pdVar8 = pdVar8 + lVar10 * 3 + 1;
    do {
      dVar16 = pdVar5[1];
      lVar7 = lVar7 + -1;
      pdVar8[-1] = dVar14 + (-(dVar16 * adStack_88[0]) + local_90 * *pdVar5) * dVar13;
      *pdVar8 = dVar15 + (local_90 * dVar16 + adStack_88[0] * *pdVar5) * dVar13;
      pdVar5 = pdVar5 + 3;
      pdVar8 = pdVar8 + 3;
    } while (lVar7 != 0);
  }
  uVar4 = 0;
LAB_00747e58:
  if (*(long *)(lVar2 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

