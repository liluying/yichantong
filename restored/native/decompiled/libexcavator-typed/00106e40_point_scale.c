/* Artifact: libexcavator.so | Address: 00106e40 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Point point_scale(Point a,double k)

{
  Point PVar1;
  
  PVar1.x = a.x * k;
  PVar1.y = a.y * k;
  PVar1.z = a.z * k;
  return PVar1;
}

