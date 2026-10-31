/* Artifact: libexcavator.so | Address: 00101660 | Ghidra static pseudocode; types require review. */

undefined8 FUN_00101660(undefined8 param_1,undefined8 *param_2)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  undefined4 *unaff_x19;
  double dVar4;
  undefined8 uVar5;
  double dVar6;
  undefined8 uVar7;
  double dVar8;
  double dVar9;
  
  FUN_001062c4(param_1,0,0x138);
  dVar4 = (double)param_2[4];
  if ((((0.0 <= dVar4) && (dVar6 = (double)param_2[5], 0.0 <= dVar6)) &&
      (dVar9 = (double)param_2[6], DAT_00107800 <= dVar9)) &&
     (dVar8 = (double)param_2[7], DAT_00107800 <= dVar8)) {
    bVar1 = true;
    if ((dVar9 <= dVar4 + dVar6) && (bVar1 = false, !NAN(dVar6 + dVar9) && !NAN(dVar4))) {
      bVar1 = dVar6 + dVar9 < dVar4;
    }
    bVar2 = true;
    if ((!bVar1) && (bVar2 = false, !NAN(dVar4 + dVar9) && !NAN(dVar6))) {
      bVar2 = dVar4 + dVar9 < dVar6;
    }
    if (!bVar2) {
      dVar4 = ((dVar6 * dVar6 + dVar9 * dVar9) - dVar4 * dVar4) / (dVar9 + dVar9);
      if (dVar4 <= dVar6) {
        iVar3 = FUN_00105f78(0xffffffff);
        if (iVar3 == 0) {
          return 0xfffffffe;
        }
        uVar7 = param_2[1];
        dVar6 = SQRT(dVar6 * dVar6 - dVar4 * dVar4);
        uVar5 = FUN_001072b8(*param_2,uVar7,param_2[2],param_2[3]);
        *(double *)(unaff_x19 + 8) = dVar6;
        *(double *)(unaff_x19 + 10) = dVar4 - dVar9;
        *(double *)(unaff_x19 + 0xc) = dVar8;
        *(double *)(unaff_x19 + 0xe) = dVar6;
        *(double *)(unaff_x19 + 0x10) = dVar4;
        *(double *)(unaff_x19 + 0x12) = dVar8;
        *(undefined8 *)(unaff_x19 + 2) = uVar5;
        *(undefined8 *)(unaff_x19 + 4) = uVar7;
        *unaff_x19 = 1;
        *(undefined8 *)(unaff_x19 + 6) = 0;
        uVar5 = FUN_00101778();
        if ((int)uVar5 != 0) {
          FUN_00105b3c();
          return 0xfffffffd;
        }
        return uVar5;
      }
    }
  }
  return 0xffffffff;
}

