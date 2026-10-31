/* Artifact: libexcavator.so | Address: 001072b8 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Point quat_to_euler(Quat q)

{
  double dVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  Point PVar8;
  
  dVar7 = q.z;
  dVar6 = q.y;
  dVar5 = q.x;
  dVar4 = q.w;
  dVar2 = atan2(dVar4 * dVar5 + dVar6 * dVar7,(0.5 - dVar5 * dVar5) - dVar6 * dVar6);
  dVar1 = DAT_00107820;
  dVar2 = dVar2 * DAT_00107820;
  dVar3 = asin(dVar6 * (dVar4 + dVar4) - dVar7 * (dVar5 + dVar5));
  dVar4 = atan2(dVar4 * dVar7 + dVar5 * dVar6,(0.5 - dVar6 * dVar6) - dVar7 * dVar7);
  PVar8.z = dVar4 * dVar1;
  PVar8.y = dVar3 * dVar1;
  PVar8.x = dVar2;
  return PVar8;
}

