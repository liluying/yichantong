/* Artifact: libexcavator.so | Address: 00107170 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Quat quat_conjugate(Quat q)

{
  Quat QVar1;
  
  QVar1.w = q.w;
  QVar1.x = -q.x;
  QVar1.y = -q.y;
  QVar1.z = -q.z;
  return QVar1;
}

