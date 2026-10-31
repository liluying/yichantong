/* Artifact: libexcavator.so | Address: 00106e70 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Point point_subtract(Point a,Point b)

{
  Point PVar1;
  
  PVar1.x = a.x - b.x;
  PVar1.y = a.y - b.y;
  PVar1.z = a.z - b.z;
  return PVar1;
}

