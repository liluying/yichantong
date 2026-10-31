/* Artifact: libexcavator.so | Address: 00103078 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00107554 */
/* WARNING: Inlined function: FUN_00106084 */
/* WARNING: Inlined function: thunk_FUN_00107064 */
/* WARNING: Inlined function: FUN_00105e08 */
/* WARNING: Inlined function: quat_from_vectors */
/* WARNING: Inlined function: quat_multiply */
/* WARNING: Inlined function: FUN_00105a78 */
/* WARNING: Inlined function: FUN_00107518 */
/* WARNING: Inlined function: FUN_00105df4 */
/* WARNING: Inlined function: FUN_00106fa8 */
/* WARNING: Inlined function: FUN_00106ffc */
/* WARNING: Inlined function: FUN_00106f90 */

undefined1  [16]
FUN_00103078(double param_1,double param_2,double param_3,double param_4,double param_5,
            double param_6,double param_7,double param_8)

{
  bool bVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  undefined1 auVar7 [16];
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  
  dVar8 = (1.0 - param_2 * (param_2 + param_2)) - param_4 * (param_4 + param_4);
  dVar2 = param_6 * (param_7 + param_7) - param_5 * (param_8 + param_8);
  dVar9 = (1.0 - param_6 * (param_6 + param_6)) - param_8 * (param_8 + param_8);
  dVar4 = 0.0;
                    /* WARNING: Could not inline here */
  dVar3 = (double)thunk_FUN_00107064(param_2 * (param_3 + param_3) - param_1 * (param_4 + param_4));
  dVar15 = SQRT(dVar2 * dVar2 + dVar9 * dVar9 + 0.0);
                    /* WARNING: Could not inline here */
  dVar5 = (double)thunk_FUN_00107024(dVar3,dVar8,dVar4);
  bVar1 = true;
  if ((9.5367431640625e-07 <= dVar15) && (bVar1 = false, !NAN(dVar5))) {
    bVar1 = dVar5 < 9.5367431640625e-07;
  }
  dVar10 = 0.0;
  if (bVar1) {
    dVar5 = 1.0;
    dVar12 = 0.0;
    dVar13 = 0.0;
  }
  else {
    dVar15 = (dVar4 * 0.0 + dVar2 * dVar3 + dVar9 * dVar8) / (dVar15 * dVar5);
    dVar5 = 1.0;
    if (1.0 <= dVar15) {
      dVar12 = 0.0;
      dVar13 = 0.0;
      dVar10 = 0.0;
    }
    else {
                    /* WARNING: Could not inline here */
      dVar6 = (double)thunk_FUN_00107024();
      dVar12 = 0.0;
      dVar13 = 0.0;
      dVar10 = 0.0;
      if (9.5367431640625e-07 < dVar6) {
        dVar6 = SQRT((1.0 - dVar15) * 0.5) / dVar6;
        dVar5 = SQRT((dVar15 + 1.0) * 0.5);
        dVar10 = (dVar9 * dVar4 - dVar8 * 0.0) * dVar6;
        dVar12 = (dVar3 * 0.0 - dVar2 * dVar4) * dVar6;
        dVar13 = (dVar2 * dVar8 - dVar9 * dVar3) * dVar6;
      }
    }
  }
  dVar4 = ((dVar5 * param_5 - dVar10 * param_6) - dVar12 * param_7) - dVar13 * param_8;
  dVar3 = (dVar13 * param_6 + dVar12 * param_5 + dVar5 * param_7) - dVar10 * param_8;
  dVar2 = (dVar12 * param_8 + dVar10 * param_5 + dVar5 * param_6) - dVar13 * param_7;
  dVar15 = (dVar10 * param_7 + dVar13 * param_5 + dVar5 * param_8) - dVar12 * param_6;
  if (dVar4 < 0.0) {
    dVar4 = -dVar4;
    dVar2 = -dVar2;
    dVar3 = -dVar3;
    dVar15 = -dVar15;
  }
  dVar5 = param_3 + param_3;
  dVar13 = param_2 * dVar5 + param_1 * (param_4 + param_4);
  dVar8 = (1.0 - param_3 * dVar5) - param_4 * (param_4 + param_4);
  dVar11 = param_4 * (param_2 + param_2) - param_1 * dVar5;
  dVar9 = dVar3 + dVar3;
  dVar10 = dVar2 * dVar9 + dVar4 * (dVar15 + dVar15);
  dVar5 = (1.0 - dVar3 * dVar9) - dVar15 * (dVar15 + dVar15);
  dVar6 = dVar15 * (dVar2 + dVar2) - dVar4 * dVar9;
  dVar14 = dVar15 + dVar15;
  dVar9 = dVar2 * (dVar3 + dVar3) - dVar4 * dVar14;
  dVar12 = (1.0 - dVar2 * (dVar2 + dVar2)) - dVar15 * dVar14;
  dVar14 = dVar3 * dVar14 + dVar4 * (dVar2 + dVar2);
  dVar15 = dVar14 * dVar14 + dVar9 * dVar9 + dVar12 * dVar12;
  dVar4 = dVar11;
  dVar2 = dVar13;
  dVar3 = dVar8;
  if (9.5367431640625e-07 <= dVar15) {
    dVar15 = (dVar11 * dVar14 + dVar8 * dVar9 + dVar13 * dVar12) / dVar15;
    dVar3 = dVar9 * dVar15;
    dVar2 = dVar12 * dVar15;
    dVar4 = dVar14 * dVar15;
  }
  dVar8 = dVar8 - dVar3;
  dVar13 = dVar13 - dVar2;
  dVar11 = dVar11 - dVar4;
  dVar4 = asin((dVar8 * dVar10 - dVar13 * dVar5) * dVar14 +
               (dVar13 * dVar6 - dVar11 * dVar10) * dVar9 +
               (dVar11 * dVar5 - dVar8 * dVar6) * dVar12);
  dVar4 = dVar4 * DAT_00107820;
  if (dVar11 * dVar6 + dVar8 * dVar5 + dVar13 * dVar10 < 0.0) {
    dVar2 = DAT_00107810 - dVar4;
    if (dVar4 <= 0.0) {
      dVar2 = dVar4;
    }
    dVar4 = dVar2;
    if (dVar4 < 0.0) {
      dVar4 = DAT_00107828 - dVar4;
    }
  }
  auVar7._8_8_ = 0;
  auVar7._0_8_ = dVar4;
  return auVar7;
}

