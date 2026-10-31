/* Artifact: libexcavator.so | Address: 001070a4 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Quat quat_from_xyz(double x,double y,double z)

{
  double dVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  Quat QVar6;
  
  dVar4 = 1.0;
  dVar5 = 1.0 - (z * z + x * x + y * y);
  dVar1 = 0.0;
  dVar2 = 0.0;
  dVar3 = 0.0;
  if (0.0 < dVar5) {
    dVar4 = SQRT(dVar5);
    dVar1 = z;
    dVar2 = x;
    dVar3 = y;
  }
  QVar6.x = dVar2;
  QVar6.w = dVar4;
  QVar6.z = dVar1;
  QVar6.y = dVar3;
  return QVar6;
}

