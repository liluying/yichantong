/* Artifact: libexcavator.so | Address: 00107104 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int quat_is_valid(Quat q)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  
  dVar10 = q.z;
  dVar9 = q.y;
  dVar8 = q.x;
  dVar7 = q.w;
  bVar1 = false;
  bVar3 = true;
  bVar5 = false;
  if (dVar10 < 2.0) {
    bVar1 = false;
    bVar3 = false;
    bVar5 = true;
    if (!NAN(dVar10)) {
      bVar1 = dVar10 < -2.0;
      bVar3 = dVar10 == -2.0;
      bVar5 = false;
    }
  }
  bVar2 = false;
  if ((!bVar3 && bVar1 == bVar5) && (bVar2 = false, !NAN(dVar9))) {
    bVar2 = dVar9 < 2.0;
  }
  bVar1 = false;
  bVar3 = true;
  bVar5 = false;
  if (bVar2) {
    bVar1 = false;
    bVar3 = false;
    bVar5 = true;
    if (!NAN(dVar9)) {
      bVar1 = dVar9 < -2.0;
      bVar3 = dVar9 == -2.0;
      bVar5 = false;
    }
  }
  bVar2 = false;
  if ((!bVar3 && bVar1 == bVar5) && (bVar2 = false, !NAN(dVar8))) {
    bVar2 = dVar8 < 2.0;
  }
  bVar1 = false;
  bVar3 = true;
  bVar5 = false;
  if (bVar2) {
    bVar1 = false;
    bVar3 = false;
    bVar5 = true;
    if (!NAN(dVar8)) {
      bVar1 = dVar8 < -2.0;
      bVar3 = dVar8 == -2.0;
      bVar5 = false;
    }
  }
  bVar2 = false;
  bVar4 = true;
  bVar6 = false;
  if (!bVar3 && bVar1 == bVar5) {
    bVar2 = false;
    bVar4 = false;
    bVar6 = true;
    if (!NAN(dVar7)) {
      bVar2 = dVar7 < -2.0;
      bVar4 = dVar7 == -2.0;
      bVar6 = false;
    }
  }
  bVar1 = false;
  if ((!bVar4 && bVar2 == bVar6) && (bVar1 = false, !NAN(dVar7))) {
    bVar1 = dVar7 < 2.0;
  }
  if (bVar1) {
    dVar7 = dVar10 * dVar10 + dVar9 * dVar9 + dVar7 * dVar7 + dVar8 * dVar8;
    return (uint)(0.5 < dVar7 && dVar7 < 2.0);
  }
  return 0;
}

