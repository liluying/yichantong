/* Artifact: libexcavator.so | Address: 001034b4 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00105bf8 */
/* WARNING: Inlined function: FUN_00105ff4 */
/* WARNING: Inlined function: FUN_00105fe4 */
/* WARNING: Inlined function: FUN_00105e70 */
/* WARNING: Inlined function: FUN_00105b04 */

undefined8
FUN_001034b4(undefined1 param_1 [16],double param_2,double param_3,double param_4,long param_5,
            int param_6)

{
  long lVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  double *pdVar5;
  double *pdVar6;
  undefined8 unaff_x30;
  undefined8 uVar7;
  undefined8 uVar8;
  double dVar9;
  undefined8 uVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  double dVar17;
  undefined8 local_438;
  undefined8 local_430;
  double dStack_428;
  double local_420;
  undefined8 local_418;
  double dStack_410;
  double local_408;
  double dStack_400;
  undefined1 auStack_3f8 [72];
  undefined1 local_3b0 [8];
  double adStack_3a8 [47];
  undefined1 local_230 [8];
  double dStack_228;
  double local_220 [46];
  long local_b0;
  
  lVar1 = tpidr_el0;
  local_b0 = *(long *)(lVar1 + 0x28);
  if (param_6 - 3U < 0xe) {
    pdVar6 = local_220;
    pdVar5 = (double *)(param_5 + 0x10);
    for (lVar4 = 0; lVar4 < param_6; lVar4 = lVar4 + 1) {
      dVar12 = pdVar5[-1];
      dVar15 = *pdVar5;
      dVar16 = dVar12 * pdVar5[1];
      dVar17 = pdVar5[-2] * dVar15;
      dVar11 = dVar12 * pdVar5[-2];
      param_4 = pdVar5[1] * dVar15;
      param_4 = param_4 + param_4;
      param_3 = (1.0 - (dVar12 * dVar12 + dVar12 * dVar12)) - (dVar15 * dVar15 + dVar15 * dVar15);
      *pdVar6 = dVar11 + dVar11 + param_4;
      param_2 = -param_3;
      pdVar6[-2] = (dVar16 + dVar16) - (dVar17 + dVar17);
      pdVar6[-1] = param_2;
      pdVar6 = pdVar6 + 3;
      pdVar5 = pdVar5 + 4;
    }
    local_418 = FUN_00106dec();
    dStack_410 = param_2;
    local_408 = param_3;
    dStack_400 = param_4;
    iVar2 = FUN_00106564(local_230,param_6,&local_418);
    dVar11 = DAT_00107838;
    if (iVar2 == 0) {
      uVar10 = local_418;
      dVar12 = local_408;
      dVar15 = dStack_410;
      for (iVar2 = 0; iVar2 != 4; iVar2 = iVar2 + 1) {
        uVar7 = FUN_00106e28();
        dVar16 = dVar15;
        dVar13 = dVar12;
        uVar8 = FUN_00107590(uVar10,dVar15,dVar12,uVar7,param_2,param_3);
        dVar17 = dVar16;
        dVar14 = dVar13;
        FUN_00107400(auStack_3f8);
        pdVar5 = adStack_3a8;
        pdVar6 = &dStack_228;
        for (lVar4 = 0; lVar4 < param_6; lVar4 = lVar4 + 1) {
          dVar17 = *pdVar6;
          dVar14 = pdVar6[1];
          dVar9 = (double)FUN_00106ce8(pdVar6[-1],auStack_3f8);
          pdVar5[-1] = dVar9;
          *pdVar5 = dVar17;
          pdVar5[1] = dVar14;
          pdVar6 = pdVar6 + 3;
          pdVar5 = pdVar5 + 3;
        }
        local_430 = FUN_00106e04();
        local_438 = 0;
        dStack_428 = dVar17;
        local_420 = dVar14;
        iVar3 = FUN_00106718(local_3b0,param_6,&local_430,&local_438);
        if (iVar3 != 0) goto LAB_00103590;
        FUN_00107170(uVar8,dVar16,dVar13,uVar7);
        uVar7 = FUN_00107478();
        uVar10 = FUN_00106e60(uVar10,dVar15,dVar12,uVar7,dVar16,dVar13);
        dVar17 = (double)thunk_FUN_00107024(uVar7);
        if (dVar17 < dVar11) break;
        param_2 = dVar16;
        param_3 = dVar13;
      }
      FUN_00106e90(uVar10,dVar15,dVar12);
      goto LAB_00103594;
    }
  }
LAB_00103590:
  FUN_00106e04();
LAB_00103594:
  if (*(long *)(lVar1 + 0x28) == local_b0) {
    return unaff_x30;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

