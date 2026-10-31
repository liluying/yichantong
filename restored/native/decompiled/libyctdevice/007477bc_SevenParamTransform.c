/* Artifact: libyctdevice.so | Address: 007477bc | Ghidra static pseudocode; types require review. */

/* gnss_trans::GnssParamTransform::SevenParamTransform(gnss_trans::SevenParameter const&,
   std::__ndk1::vector<gnss_trans::Point3D, std::__ndk1::allocator<gnss_trans::Point3D> > const&,
   std::__ndk1::vector<gnss_trans::Point3D, std::__ndk1::allocator<gnss_trans::Point3D> >&, bool) */

void gnss_trans::GnssParamTransform::SevenParamTransform
               (SevenParameter *param_1,vector *param_2,vector *param_3,bool param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  double *pdVar5;
  ulong uVar6;
  double *pdVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  undefined1 auVar14 [16];
  double dVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  double dVar20;
  double dVar21;
  double dVar22;
  char *local_78;
  undefined4 local_70;
  char *local_68;
  long local_48;
  
  lVar2 = tpidr_el0;
  auVar14 = NEON_fmov(0x3ff0000000000000,8);
  local_48 = *(long *)(lVar2 + 0x28);
  lVar1 = *(long *)param_2;
  dVar11 = *(double *)(param_1 + 0x20);
  dVar16 = *(double *)(param_1 + 0x28);
  dVar10 = *(double *)(param_1 + 8);
  dVar9 = *(double *)param_1;
  dVar8 = *(double *)(param_1 + 0x10);
  dVar12 = *(double *)(param_1 + 0x18);
  uVar6 = (*(long *)(param_2 + 8) - lVar1 >> 3) * -0x5555555555555555;
  if (param_4) {
    if (*(double *)(param_1 + 0x30) == 0.0) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00747a38 to 00747a43 has its CatchHandler @ 00747a70 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_78 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/gnss/gnss_param_transform.cpp";
      local_70 = 0x22;
      local_68 = "SevenParamTransform";
                    /* try { // try from 00747868 to 0074787f has its CatchHandler @ 00747a88 */
      spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_78,3,
                          "SevenParamTransform inverse failed: scale is zero",0x31);
      uVar4 = 1;
      goto LAB_00747a00;
    }
    if (0 < (int)uVar6) {
      dVar21 = dVar16 + dVar11 * dVar12;
      dVar15 = -dVar11 + dVar12 * dVar16;
      uVar6 = uVar6 & 0xffffffff;
      dVar20 = dVar12 * dVar12 + 1.0;
      dVar22 = 1.0 / *(double *)(param_1 + 0x30);
      dVar13 = 1.0 / ((auVar14._0_8_ * dVar20 + dVar16 * dVar21) - dVar11 * dVar15);
      pdVar5 = (double *)(lVar1 + 0x10);
      pdVar7 = (double *)(*(long *)param_3 + 0x10);
      do {
        uVar6 = uVar6 - 1;
        dVar17 = pdVar5[-2] - dVar9;
        dVar18 = pdVar5[-1] - dVar10;
        dVar19 = *pdVar5 - dVar8;
        pdVar7[-1] = (-dVar16 + dVar11 * dVar12) * dVar13 * dVar22 * dVar17 +
                     (dVar11 * dVar11 + 1.0) * dVar13 * dVar22 * dVar18 +
                     (dVar12 + dVar16 * dVar11) * dVar13 * dVar22 * dVar19;
        pdVar7[-2] = dVar20 * dVar13 * dVar22 * dVar17 + dVar21 * dVar13 * dVar22 * dVar18 +
                     dVar15 * dVar13 * dVar22 * dVar19;
        *pdVar7 = dVar22 * (dVar11 + dVar12 * dVar16) * dVar13 * dVar17 +
                  dVar22 * (dVar16 * dVar16 + 1.0) * dVar13 * dVar19 +
                  dVar22 * (-dVar12 + dVar16 * dVar11) * dVar13 * dVar18;
        pdVar5 = pdVar5 + 3;
        pdVar7 = pdVar7 + 3;
      } while (uVar6 != 0);
    }
  }
  else if (0 < (int)uVar6) {
    uVar6 = uVar6 & 0xffffffff;
    pdVar5 = (double *)(lVar1 + 0x10);
    pdVar7 = (double *)(*(long *)param_3 + 0x10);
    do {
      dVar13 = *(double *)(param_1 + 0x30);
      dVar15 = pdVar5[-2];
      dVar20 = pdVar5[-1];
      dVar21 = *pdVar5;
      uVar6 = uVar6 - 1;
      pdVar7[-1] = dVar10 + dVar16 * dVar13 * dVar15 + auVar14._8_8_ * dVar13 * dVar20 +
                            -dVar12 * dVar13 * dVar21;
      pdVar7[-2] = dVar9 + auVar14._0_8_ * dVar13 * dVar15 + -dVar16 * dVar13 * dVar20 +
                           dVar11 * dVar13 * dVar21;
      *pdVar7 = dVar8 + dVar15 * dVar13 * -dVar11 + dVar20 * dVar13 * dVar12 + dVar21 * dVar13;
      pdVar5 = pdVar5 + 3;
      pdVar7 = pdVar7 + 3;
    } while (uVar6 != 0);
  }
  uVar4 = 0;
LAB_00747a00:
  if (*(long *)(lVar2 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

