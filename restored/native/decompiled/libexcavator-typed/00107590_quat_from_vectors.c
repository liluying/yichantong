/* Artifact: libexcavator.so | Address: 00107590 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: thunk_FUN_00107024 */
/* WARNING: Inlined function: FUN_00107784 */
/* WARNING: Inlined function: FUN_00106f90 */
/* WARNING: Inlined function: FUN_00106ffc */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Quat quat_from_vectors(Point a,Point b)

{
  bool bVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  Quat QVar14;
  
  dVar12 = b.z;
  dVar11 = b.y;
  dVar9 = b.x;
  dVar7 = a.z;
  dVar5 = a.y;
  dVar2 = a.x;
  dVar13 = SQRT(dVar7 * dVar7 + dVar2 * dVar2 + dVar5 * dVar5);
                    /* WARNING: Could not inline here */
  dVar3 = (double)thunk_FUN_00107024(dVar9,dVar11,dVar12);
  bVar1 = true;
  if ((9.5367431640625e-07 <= dVar13) && (bVar1 = false, !NAN(dVar3))) {
    bVar1 = dVar3 < 9.5367431640625e-07;
  }
  dVar6 = 0.0;
  if (bVar1) {
    dVar3 = 1.0;
    dVar8 = 0.0;
    dVar10 = 0.0;
  }
  else {
    dVar13 = (dVar7 * dVar12 + dVar2 * dVar9 + dVar5 * dVar11) / (dVar13 * dVar3);
    dVar3 = 1.0;
    if (1.0 <= dVar13) {
      dVar8 = 0.0;
      dVar10 = 0.0;
      dVar6 = 0.0;
    }
    else {
                    /* WARNING: Could not inline here */
      dVar4 = (double)thunk_FUN_00107024();
      dVar8 = 0.0;
      dVar10 = 0.0;
      dVar6 = 0.0;
      if (9.5367431640625e-07 < dVar4) {
        dVar4 = SQRT((1.0 - dVar13) * 0.5) / dVar4;
        dVar3 = SQRT((dVar13 + 1.0) * 0.5);
        dVar6 = (dVar5 * dVar12 - dVar7 * dVar11) * dVar4;
        dVar8 = (dVar7 * dVar9 - dVar2 * dVar12) * dVar4;
        dVar10 = (dVar2 * dVar11 - dVar5 * dVar9) * dVar4;
      }
    }
  }
  QVar14.x = dVar6;
  QVar14.w = dVar3;
  QVar14.z = dVar10;
  QVar14.y = dVar8;
  return QVar14;
}

