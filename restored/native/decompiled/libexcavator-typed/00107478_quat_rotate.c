/* Artifact: libexcavator.so | Address: 00107478 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Point quat_rotate(Quat q,Point p)

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
  Point PVar12;
  
  dVar7 = p.z;
  dVar6 = p.y;
  dVar5 = p.x;
  dVar4 = q.z;
  dVar3 = q.y;
  dVar2 = q.x;
  dVar1 = q.w;
  dVar8 = dVar2 + dVar2;
  dVar9 = dVar3 + dVar3;
  dVar10 = dVar4 + dVar4;
  dVar11 = 1.0 - dVar2 * dVar8;
  PVar12.x = dVar7 * (dVar4 * dVar8 + dVar1 * dVar9) +
             dVar6 * (dVar2 * dVar9 - dVar1 * dVar10) +
             dVar5 * ((1.0 - dVar3 * dVar9) - dVar4 * dVar10);
  PVar12.y = dVar7 * (dVar3 * dVar10 - dVar1 * dVar8) +
             dVar5 * (dVar2 * dVar9 + dVar1 * dVar10) + dVar6 * (dVar11 - dVar4 * dVar10);
  PVar12.z = dVar5 * (dVar4 * dVar8 - dVar1 * dVar9) + dVar6 * (dVar3 * dVar10 + dVar1 * dVar8) +
             dVar7 * (dVar11 - dVar3 * dVar9);
  return PVar12;
}

