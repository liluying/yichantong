/* Artifact: libexcavator.so | Address: 00107370 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Quat quat_multiply(Quat a,Quat b)

{
  double dVar1;
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
  Quat QVar12;
  
  dVar11 = b.z;
  dVar10 = b.y;
  dVar9 = b.x;
  dVar8 = b.w;
  dVar6 = a.z;
  dVar4 = a.y;
  dVar2 = a.x;
  dVar7 = a.w;
  dVar1 = ((dVar7 * dVar8 - dVar2 * dVar9) - dVar4 * dVar10) - dVar6 * dVar11;
  dVar5 = (dVar6 * dVar9 + dVar4 * dVar8 + dVar7 * dVar10) - dVar2 * dVar11;
  dVar3 = (dVar4 * dVar11 + dVar2 * dVar8 + dVar7 * dVar9) - dVar6 * dVar10;
  dVar7 = (dVar2 * dVar10 + dVar6 * dVar8 + dVar7 * dVar11) - dVar4 * dVar9;
  if (dVar1 < 0.0) {
    dVar1 = -dVar1;
    dVar3 = -dVar3;
    dVar5 = -dVar5;
    dVar7 = -dVar7;
  }
  QVar12.x = dVar3;
  QVar12.w = dVar1;
  QVar12.z = dVar7;
  QVar12.y = dVar5;
  return QVar12;
}

