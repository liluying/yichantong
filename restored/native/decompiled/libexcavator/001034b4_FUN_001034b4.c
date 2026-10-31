/* Artifact: libexcavator.so | Address: 001034b4 | Ghidra static pseudocode; types require review. */

void FUN_001034b4(undefined1 param_1 [16],double param_2,double param_3,double param_4)

{
  long lVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  double *pdVar6;
  double *pdVar7;
  undefined8 unaff_x30;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  undefined1 auVar13 [16];
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
  
  auVar13 = FUN_00105bf8();
  lVar1 = tpidr_el0;
  local_b0 = *(long *)(lVar1 + 0x28);
  iVar4 = auVar13._8_4_;
  if (iVar4 - 3U < 0xe) {
    pdVar7 = local_220;
    pdVar6 = (double *)(auVar13._0_8_ + 0x10);
    for (lVar5 = 0; lVar5 < iVar4; lVar5 = lVar5 + 1) {
      dVar9 = pdVar6[-1];
      dVar10 = *pdVar6;
      dVar11 = dVar9 * pdVar6[1];
      dVar12 = pdVar6[-2] * dVar10;
      dVar8 = dVar9 * pdVar6[-2];
      param_4 = pdVar6[1] * dVar10;
      param_4 = param_4 + param_4;
      param_3 = (1.0 - (dVar9 * dVar9 + dVar9 * dVar9)) - (dVar10 * dVar10 + dVar10 * dVar10);
      *pdVar7 = dVar8 + dVar8 + param_4;
      param_2 = -param_3;
      pdVar7[-2] = (dVar11 + dVar11) - (dVar12 + dVar12);
      pdVar7[-1] = param_2;
      pdVar7 = pdVar7 + 3;
      pdVar6 = pdVar6 + 4;
    }
    local_418 = FUN_00106dec();
    dStack_410 = param_2;
    local_408 = param_3;
    dStack_400 = param_4;
    iVar2 = FUN_00106564(local_230,auVar13._8_8_ & 0xffffffff,&local_418);
    dVar8 = DAT_00107838;
    if (iVar2 == 0) {
      for (iVar2 = 0; iVar2 != 4; iVar2 = iVar2 + 1) {
        FUN_00106e28();
        FUN_00105fe4();
        FUN_00107590();
        FUN_00105e70(auStack_3f8);
        FUN_00107400();
        pdVar6 = adStack_3a8;
        pdVar7 = &dStack_228;
        for (lVar5 = 0; lVar5 < iVar4; lVar5 = lVar5 + 1) {
          param_2 = *pdVar7;
          param_3 = pdVar7[1];
          dVar9 = (double)FUN_00106ce8(pdVar7[-1],auStack_3f8);
          pdVar6[-1] = dVar9;
          *pdVar6 = param_2;
          pdVar6[1] = param_3;
          pdVar7 = pdVar7 + 3;
          pdVar6 = pdVar6 + 3;
        }
        local_430 = FUN_00106e04();
        local_438 = 0;
        dStack_428 = param_2;
        local_420 = param_3;
        iVar3 = FUN_00106718(local_3b0,auVar13._8_8_ & 0xffffffff,&local_430,&local_438);
        if (iVar3 != 0) goto LAB_00103590;
        FUN_00105b04();
        FUN_00107170();
        FUN_00107478();
        FUN_00105fe4();
        FUN_00106e60();
        FUN_00105b04();
        dVar9 = (double)thunk_FUN_00107024();
        if (dVar9 < dVar8) break;
      }
      FUN_00105fe4();
      FUN_00106e90();
      goto LAB_00103594;
    }
  }
LAB_00103590:
  FUN_00106e04();
LAB_00103594:
  if (*(long *)(lVar1 + 0x28) == local_b0) {
    FUN_00105ff4(unaff_x30);
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

