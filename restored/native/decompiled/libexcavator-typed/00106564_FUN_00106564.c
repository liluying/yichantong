/* Artifact: libexcavator.so | Address: 00106564 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_00106e04 */
/* WARNING: Inlined function: point_add */
/* WARNING: Inlined function: point_scale */
/* WARNING: Inlined function: point_subtract */
/* WARNING: Inlined function: FUN_00106f90 */
/* WARNING: Inlined function: FUN_00106e80 */

undefined8 FUN_00106564(long param_1,uint param_2,double *param_3)

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
  double dVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  
  if ((int)param_2 < 3) {
    uVar2 = 0xffffffff;
  }
  else {
    dVar5 = 0.0;
    dVar7 = 0.0;
    dVar9 = 0.0;
    uVar3 = (ulong)param_2;
    pdVar1 = (double *)(param_1 + 0x10);
    for (uVar4 = uVar3; uVar4 != 0; uVar4 = uVar4 - 1) {
      dVar5 = dVar5 + pdVar1[-2];
      dVar7 = dVar7 + pdVar1[-1];
      dVar9 = dVar9 + *pdVar1;
      pdVar1 = pdVar1 + 3;
    }
    dVar11 = 1.0 / (double)(int)param_2;
    dVar13 = 0.0;
    dVar12 = 0.0;
    dVar16 = 0.0;
    dVar15 = 0.0;
    dVar14 = 0.0;
    pdVar1 = (double *)(param_1 + 0x10);
    for (; uVar3 != 0; uVar3 = uVar3 - 1) {
      dVar6 = pdVar1[-2] - dVar5 * dVar11;
      dVar8 = pdVar1[-1] - dVar7 * dVar11;
      dVar10 = *pdVar1 - dVar9 * dVar11;
      dVar14 = dVar14 + dVar6 * dVar6;
      dVar15 = dVar15 + dVar6 * dVar8;
      dVar16 = dVar16 + dVar8 * dVar8;
      dVar13 = dVar13 + dVar6 * dVar10;
      dVar12 = dVar12 + dVar8 * dVar10;
      pdVar1 = pdVar1 + 3;
    }
    dVar12 = (dVar13 * dVar15 - dVar12 * dVar14) / (dVar16 * dVar15 - dVar16 * dVar14);
    dVar14 = (dVar13 - dVar15 * dVar12) / dVar14;
    dVar13 = (1.0 - dVar14 * dVar14) - dVar12 * dVar12;
    if (0.0 <= dVar13) {
      dVar13 = SQRT(dVar13);
      *param_3 = -(dVar14 * dVar13);
      param_3[1] = -(dVar12 * dVar13);
      param_3[2] = dVar13;
      dVar5 = dVar13 * dVar9 * dVar11 +
              -(dVar14 * dVar13) * dVar5 * dVar11 + -(dVar12 * dVar13) * dVar7 * dVar11;
      param_3[3] = dVar5;
      if (0.0 <= dVar5) {
        uVar2 = 0;
      }
      else {
        param_3[3] = -dVar5;
        uVar2 = 0;
        *param_3 = -*param_3;
        param_3[1] = -param_3[1];
        param_3[2] = -param_3[2];
      }
    }
    else {
      uVar2 = 0xfffffffe;
    }
  }
  return uVar2;
}

