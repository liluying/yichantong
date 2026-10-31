/* Artifact: libexcavator.so | Address: 00106e3c | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Point point_make(double x,double y,double z)

{
  Point PVar1;
  
  PVar1.y = y;
  PVar1.x = x;
  PVar1.z = z;
  return PVar1;
}

