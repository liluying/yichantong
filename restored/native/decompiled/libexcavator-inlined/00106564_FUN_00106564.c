/* Artifact: libexcavator.so | Address: 00106564 | Ghidra static pseudocode; types require review. */

undefined8
FUN_00106564(undefined1 param_1 [16],undefined8 param_2,undefined8 param_3,long param_4,uint param_5
            ,double *param_6)

{
  double *pdVar1;
  undefined8 uVar2;
  ulong uVar3;
  ulong uVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  
  if ((int)param_5 < 3) {
    uVar2 = 0xffffffff;
  }
  else {
    FUN_00106e04();
    uVar3 = (ulong)param_5;
    for (uVar4 = uVar3; uVar4 != 0; uVar4 = uVar4 - 1) {
      FUN_00106e60();
    }
    uVar2 = FUN_00106e40();
    dVar9 = 0.0;
    dVar8 = 0.0;
    dVar12 = 0.0;
    dVar11 = 0.0;
    dVar10 = 0.0;
    pdVar1 = (double *)(param_4 + 0x10);
    for (; uVar3 != 0; uVar3 = uVar3 - 1) {
      dVar6 = pdVar1[-1];
      dVar7 = *pdVar1;
      dVar5 = (double)FUN_00106e70(pdVar1[-2],dVar6,dVar7,uVar2,param_2,param_3);
      dVar10 = dVar10 + dVar5 * dVar5;
      dVar11 = dVar11 + dVar5 * dVar6;
      dVar12 = dVar12 + dVar6 * dVar6;
      dVar9 = dVar9 + dVar5 * dVar7;
      dVar8 = dVar8 + dVar6 * dVar7;
      pdVar1 = pdVar1 + 3;
    }
    dVar8 = (dVar9 * dVar11 - dVar8 * dVar10) / (dVar12 * dVar11 - dVar12 * dVar10);
    dVar10 = (dVar9 - dVar11 * dVar8) / dVar10;
    dVar9 = (1.0 - dVar10 * dVar10) - dVar8 * dVar8;
    if (0.0 <= dVar9) {
      dVar9 = SQRT(dVar9);
      *param_6 = -(dVar10 * dVar9);
      param_6[1] = -(dVar8 * dVar9);
      param_6[2] = dVar9;
      dVar9 = (double)FUN_00106f90();
      param_6[3] = dVar9;
      if (0.0 <= dVar9) {
        uVar2 = 0;
      }
      else {
        dVar8 = param_6[1];
        dVar12 = param_6[2];
        param_6[3] = -dVar9;
        dVar9 = (double)FUN_00106e80(*param_6);
        uVar2 = 0;
        *param_6 = dVar9;
        param_6[1] = dVar8;
        param_6[2] = dVar12;
      }
    }
    else {
      uVar2 = 0xfffffffe;
    }
  }
  return uVar2;
}

