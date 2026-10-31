/* Artifact: libexcavator.so | Address: 001076b8 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Quat quat_6b8(Quat q)

{
  undefined1 auVar1 [16];
  float fVar2;
  double dVar3;
  float fVar4;
  float fVar5;
  double dVar6;
  Quat QVar7;
  
  dVar6 = q.z;
  dVar3 = q.y;
  fVar4 = (float)(q.x * dVar3 + q.w * dVar6);
  fVar2 = (float)((0.5 - dVar3 * dVar3) - dVar6 * dVar6);
  fVar5 = SQRT(fVar4 * fVar4 + fVar2 * fVar2);
  if (fVar5 <= 9.536743e-07) {
    dVar6 = 0.0;
    dVar3 = 1.0;
  }
  else {
    fVar2 = fVar2 / fVar5;
    fVar5 = SQRT((1.0 - fVar2) * 0.5);
    dVar3 = (double)SQRT((fVar2 + 1.0) * 0.5);
    fVar2 = -fVar5;
    if (0.0 <= fVar4) {
      fVar2 = fVar5;
    }
    dVar6 = (double)fVar2;
  }
  QVar7.x = 0.0;
  QVar7.w = dVar3;
  auVar1._8_8_ = 0;
  auVar1._0_8_ = dVar6;
  QVar7.y = (double)SUB168(auVar1 << 0x40,0);
  QVar7.z = (double)SUB168(auVar1 << 0x40,8);
  return QVar7;
}

